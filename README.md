Cpp-Initializer

A CLI tool for bootstrapping modern C++ projects, inspired by LeetCode setups. Built in Rust for cross-platform reliability.

Overview

Cpp-Initializer is a command-line utility that automates the creation of a complete C++ project structure, eliminating manual folder setup, file creation, and compiler configuration. Tailored for competitive programming (e.g., LeetCode) with pre-configured templates for main.cpp, CMakeLists.txt, and build scripts, it supports customizable options like project name, language standards (C++11/14/17/20), and testing frameworks. Open it in your editor (e.g., Neovim) and start coding---perfect for developers tired of repetitive boilerplate.

Features

One-Command Setup: Generates folders, main.cpp, CMakeLists.txt, .gitignore, and build/run scripts.

LeetCode-Optimized: Includes fast I/O templates, vector/string utils, and sample test cases.

Customizable: Flags for project name, C++ standard, add-ons (e.g., Google Test, Valgrind integration).

Cross-Platform: Works on Linux/macOS/Windows via Rust's cargo.

Minimal Overhead: No bloat---outputs a clean, compilable project ready for g++ or CMake.

How It Works

Install & Run: cargo install cpp-initializer then cpp-init my_project --std=c++17 --test.

Generation: Tool creates dir structure: src/main.cpp, tests/, build.sh, CMakeLists.txt.

Customization: Parses flags; injects templates (e.g., #include <bits/stdc++.h> for LeetCode).

Build/Run: Auto-generates scripts: ./build.sh compiles, ./run.sh executes.

Events

N/A (CLI tool; logs via println! for progress: "Creating project...", "Adding LeetCode template...").

Requirements

Rust 1.75+, Cargo

CMake (optional, for generated projects)

g++ (for building output)

License

MIT

For more details, see the program code and the test suite.
