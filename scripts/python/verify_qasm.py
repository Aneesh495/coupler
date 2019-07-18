#!/usr/bin/env python3
"""
Exhaustive verification suite for OpenQASM 3.0 circuits in Coupler.

Validates lexing, parsing, and scheduling across all benchmark circuits
using the native Coupler release binary.
"""

import os
import subprocess
import sys

def main():
    root = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
    circuits_dir = os.path.join(root, "circuits")
    coupler_bin = os.path.join(root, "target", "release", "coupler")

    if not os.path.exists(coupler_bin):
        print(f"Error: Coupler release binary not found at {coupler_bin}. Run `cargo build --release` first.")
        sys.exit(1)

    qasm_files = []
    for r, _, files in os.walk(circuits_dir):
        for f in files:
            if f.endswith(".qasm"):
                qasm_files.append(os.path.join(r, f))

    qasm_files.sort()
    total = len(qasm_files)
    passed = 0
    total_loc = 0

    print(f"Verifying {total} OpenQASM 3.0 circuit benchmarks with Coupler native engine...\n")

    for idx, path in enumerate(qasm_files, 1):
        rel_path = os.path.relpath(path, root)
        with open(path, "r", encoding="utf-8") as f:
            loc = sum(1 for _ in f)
        total_loc += loc

        res = subprocess.run([coupler_bin, "stats", path], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if res.returncode == 0:
            print(f"  [{idx:2}/{total}] PASS : {rel_path} ({loc:,} LOC)")
            passed += 1
        else:
            print(f"  [{idx:2}/{total}] FAIL : {rel_path}")
            print(f"         Error: {res.stderr.strip()[:100]}")

    print("\n" + "=" * 65)
    print(f"Verification Results: {passed}/{total} circuits passed ({passed/total*100:.1f}%)")
    print(f"Total Verified OpenQASM 3.0 Code: {total_loc:,} lines")
    print("=" * 65)

    if passed != total:
        sys.exit(1)

if __name__ == "__main__":
    main()
