#!/usr/bin/env python3
"""
Lint script to ensure zero em dashes are present in any source, documentation,
or comment files across the repository.
"""

import os
import sys

# Unicode character codes for em dash and en dash
EM_DASH = "\u2014"
EN_DASH = "\u2013"

CHECK_EXTENSIONS = {
    ".rs", ".qasm", ".rhai", ".py", ".md", ".toml", ".json", ".yaml", ".yml",
    ".txt", ".sh", ".inc"
}

IGNORED_DIRS = {
    ".git", "target", "__pycache__", ".zig-cache"
}

def main():
    repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
    violations = []

    for root, dirs, files in os.walk(repo_root):
        dirs[:] = [d for d in dirs if d not in IGNORED_DIRS]
        for file in files:
            ext = os.path.splitext(file)[1].lower()
            if ext in CHECK_EXTENSIONS or file in {"Makefile", "LICENSE"}:
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, "r", encoding="utf-8") as f:
                        for line_num, line in enumerate(f, 1):
                            if EM_DASH in line:
                                rel_path = os.path.relpath(file_path, repo_root)
                                violations.append((rel_path, line_num, "em dash (U+2014)", line.strip()))
                            elif EN_DASH in line:
                                rel_path = os.path.relpath(file_path, repo_root)
                                violations.append((rel_path, line_num, "en dash (U+2013)", line.strip()))
                except UnicodeDecodeError:
                    continue

    if violations:
        print(f"FAILED: Found {len(violations)} dash violation(s):")
        for path, line_no, desc, snippet in violations:
            print(f"  {path}:{line_no} [{desc}] -> {snippet[:60]}")
        sys.exit(1)
    else:
        print("PASS: Zero em dash or en dash violations found.")
        sys.exit(0)

if __name__ == "__main__":
    main()
