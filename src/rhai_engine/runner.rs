//! Script execution executive for Rhai control plane pipelines.

use super::bindings::register_coupler_api;
use rhai::{Dynamic, Engine, Scope};
use std::path::Path;

pub struct RhaiRunner {
    engine: Engine,
}

impl RhaiRunner {
    pub fn new() -> Self {
        let mut engine = Engine::new();
        register_coupler_api(&mut engine);
        Self { engine }
    }

    /// Execute a Rhai automation script string.
    pub fn run_script(&self, script: &str) -> Result<Dynamic, String> {
        let mut scope = Scope::new();
        self.engine.eval_with_scope(&mut scope, script).map_err(|e| e.to_string())
    }

    /// Execute a Rhai automation script file from disk.
    pub fn run_file(&self, path: impl AsRef<Path>) -> Result<Dynamic, String> {
        let content = std::fs::read_to_string(path).map_err(|e| e.to_string())?;
        self.run_script(&content)
    }
}

impl Default for RhaiRunner {
    fn default() -> Self {
        Self::new()
    }
}
