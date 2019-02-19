# Coupler build and test targets
.PHONY: all build test verify lint-emdash clean fmt

all: build test verify lint-emdash

build:
	cargo build --release

test:
	cargo test --all

verify:
	python3 scripts/python/verify_qasm.py

lint-emdash:
	python3 scripts/python/lint_emdash.py

fmt:
	cargo fmt --all

clean:
	cargo clean
