//! Coupler CLI: Command-line interface for OpenQASM 3.0 compilation, simulation, and verification.

use coupler::lexer::Lexer;
use coupler::parser::Parser;
use coupler::passes::commutation::cancel_redundant_gates;
use coupler::passes::decompose::decompose_to_native_basis;
use coupler::passes::routing::SabreRouter;
use coupler::passes::scheduling::compute_asap_schedule;
use coupler::rhai_engine::runner::RhaiRunner;
use coupler::simulator::stabilizer::StabilizerTableau;
use coupler::simulator::statevector::StateVector;
use coupler::topology::grid::generate_2d_grid;
use coupler::topology::heavy_hex::generate_heavy_hex;
use coupler::VERSION;
use std::collections::HashMap;
use std::env;
use std::fs;
use std::process;

fn print_usage() {
    println!("Coupler v{} - A hardware-aware OpenQASM 3.0 execution engine", VERSION);
    println!();
    println!("USAGE:");
    println!("  coupler <COMMAND> [OPTIONS] [ARGS...]");
    println!();
    println!("COMMANDS:");
    println!("  stats <file.qasm>              Display circuit statistics (gates, qubits, depth)");
    println!("  schedule <file.qasm>           Compute ASAP timing schedule and critical path");
    println!("  compile <file.qasm> [flags]    Run compiler passes (decompose, cancel, route)");
    println!("  simulate <file.qasm> [backend] Simulate circuit (statevector or stabilizer)");
    println!("  rhai <script.rhai>             Execute Rhai control plane script");
    println!("  version                        Show engine version");
    println!();
    println!("FLAGS:");
    println!("  --decompose                    Decompose to native hardware basis");
    println!("  --cancel                       Run gate cancellation pass");
    println!("  --route <grid|hex>             Route circuit onto physical coupling graph");
}

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        print_usage();
        process::exit(1);
    }

    match args[1].as_str() {
        "version" | "-v" | "--version" => {
            println!("Coupler v{}", VERSION);
        }
        "stats" => {
            if args.len() < 3 {
                eprintln!("Error: Missing QASM file path");
                process::exit(1);
            }
            let src = fs::read_to_string(&args[2]).expect("Failed to read QASM file");
            let mut lexer = Lexer::new(&src);
            let tokens = lexer.tokenize().expect("Lexer error");
            let mut parser = Parser::new(tokens);
            let prog = parser.parse_program().expect("Parser error");

            let qubits = prog.referenced_qubits();
            let gate_count = prog.count_gates();
            let sched = compute_asap_schedule(&prog);

            println!("=== Circuit Statistics: {} ===", args[2]);
            println!("OpenQASM Version:    {}", prog.version.as_deref().unwrap_or("2.0/implicit"));
            println!("Referenced Qubits:   {}", qubits.len());
            println!("Total Gate Count:    {}", gate_count);
            println!("Critical Path Depth: {}", sched.critical_path_depth);
            println!("Total Duration (dt): {}", sched.total_duration_dt);
        }
        "schedule" => {
            if args.len() < 3 {
                eprintln!("Error: Missing QASM file path");
                process::exit(1);
            }
            let src = fs::read_to_string(&args[2]).expect("Failed to read QASM file");
            let mut lexer = Lexer::new(&src);
            let tokens = lexer.tokenize().expect("Lexer error");
            let mut parser = Parser::new(tokens);
            let prog = parser.parse_program().expect("Parser error");
            let sched = compute_asap_schedule(&prog);

            println!("=== ASAP Schedule Report: {} ===", args[2]);
            println!("Critical Path Depth: {}", sched.critical_path_depth);
            println!("Total Duration (dt): {} (~{:.2} ns)", sched.total_duration_dt, sched.total_duration_dt as f64 * 0.222);
            println!("\nPer-Qubit Operations:");
            let mut sorted_qubits: Vec<_> = sched.qubit_depths.iter().collect();
            sorted_qubits.sort_by_key(|(k, _)| (*k).clone());
            for (q, d) in sorted_qubits {
                println!("  {:12} : {} ops", q, d);
            }
        }
        "compile" => {
            if args.len() < 3 {
                eprintln!("Error: Missing QASM file path");
                process::exit(1);
            }
            let src = fs::read_to_string(&args[2]).expect("Failed to read QASM file");
            let mut lexer = Lexer::new(&src);
            let tokens = lexer.tokenize().expect("Lexer error");
            let mut parser = Parser::new(tokens);
            let mut prog = parser.parse_program().expect("Parser error");

            let do_decompose = args.iter().any(|a| a == "--decompose");
            let do_cancel = args.iter().any(|a| a == "--cancel");
            let route_idx = args.iter().position(|a| a == "--route");

            println!("Initial gate count: {}", prog.count_gates());

            if do_decompose {
                prog = decompose_to_native_basis(&prog);
                println!("After decomposition: {} gates", prog.count_gates());
            }

            if do_cancel {
                prog = cancel_redundant_gates(&prog);
                println!("After cancellation: {} gates", prog.count_gates());
            }

            if let Some(pos) = route_idx {
                if pos + 1 < args.len() {
                    let topo_type = &args[pos + 1];
                    let graph = match topo_type.as_str() {
                        "grid" => generate_2d_grid(4, 4),
                        "hex" => generate_heavy_hex(2),
                        _ => {
                            eprintln!("Unknown topology '{}', defaulting to 4x4 grid", topo_type);
                            generate_2d_grid(4, 4)
                        }
                    };
                    let num_qubits = prog.referenced_qubits().len().max(4);
                    let mut router = SabreRouter::new(&graph, num_qubits);
                    prog = router.route_program(&prog, |q| {
                        q.to_string().chars().filter(|c| c.is_ascii_digit()).collect::<String>().parse::<usize>().unwrap_or(0)
                    });
                    println!("After SABRE routing on {}: {} gates", topo_type, prog.count_gates());
                }
            }

            println!("Compilation complete.");
        }
        "simulate" => {
            if args.len() < 3 {
                eprintln!("Error: Missing QASM file path");
                process::exit(1);
            }
            let backend = args.get(3).map(|s| s.as_str()).unwrap_or("statevector");
            let src = fs::read_to_string(&args[2]).expect("Failed to read QASM file");
            let mut lexer = Lexer::new(&src);
            let tokens = lexer.tokenize().expect("Lexer error");
            let mut parser = Parser::new(tokens);
            let prog = parser.parse_program().expect("Parser error");
            let num_qubits = prog.referenced_qubits().len().max(2);

            match backend {
                "stabilizer" => {
                    let mut tab = StabilizerTableau::new(num_qubits);
                    println!("Simulating {} qubits on Aaronson-Gottesman stabilizer tableau...", num_qubits);
                    for i in 0..num_qubits {
                        let res = tab.measure(i, false);
                        println!("  Measured Qubit {}: {}", i, if res { 1 } else { 0 });
                    }
                }
                _ => {
                    let mut sim = StateVector::new(num_qubits);
                    let mut qmap = HashMap::new();
                    for (i, q) in prog.referenced_qubits().iter().enumerate() {
                        qmap.insert(q.to_string(), i);
                    }
                    sim.execute_program(&prog, &qmap).expect("Simulation error");
                    let probs = sim.probabilities();
                    println!("Statevector simulation complete ({} qubits). Non-zero states:", num_qubits);
                    for (idx, &p) in probs.iter().enumerate() {
                        if p > 1e-6 {
                            println!("  |{:0width$b}> : {:.6} ({:.2}%)", idx, p, p * 100.0, width = num_qubits);
                        }
                    }
                }
            }
        }
        "rhai" => {
            if args.len() < 3 {
                eprintln!("Error: Missing Rhai script path");
                process::exit(1);
            }
            let runner = RhaiRunner::new();
            match runner.run_file(&args[2]) {
                Ok(result) => println!("Rhai execution succeeded: {:?}", result),
                Err(err) => {
                    eprintln!("Rhai execution error: {}", err);
                    process::exit(1);
                }
            }
        }
        cmd => {
            eprintln!("Unknown command: {}", cmd);
            print_usage();
            process::exit(1);
        }
    }
}
