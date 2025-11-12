# 🖥️ `my-os` — A Minimal 32-bit Kernel in C and Assembly  
> *A hobby OS for learning low-level systems programming — no libc, no bootloader, just pure x86.*

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)  
[![Build Status](https://img.shields.io/github/actions/workflow/status/USERNAME/my-os/build.yml?branch=main)](https://github.com/Mansoryq/c-trush-project/actions)  
[![GitHub stars](https://img.shields.io/github/stars/Mansoryq/c-trush-project?style=social)](https://github.com/Mansoryq/c-trush-project/stargazers)

---

## 🔍 Overview

`my-os` is a minimal, educational 32-bit operating system kernel written in **C and GNU Assembly**, targeting **x86 real-mode → protected-mode transition**. It runs in QEMU and demonstrates foundational OS concepts:  
- Memory layout and linker scripts  
- VGA text-mode output  
- ELF kernel loading  
- Interrupt handling (IDT, PIC)  
- Bare-metal execution without BIOS/UEFI services  

This project is **not** meant for production use — it's a learning vehicle for understanding how operating systems are built from the ground up.

---

## 🛠️ Prerequisites

You must have a **cross-compiler toolchain** for `i686-elf` installed:

| Tool | Purpose |
|------|---------|
| `i686-elf-gcc` | Cross-compiler for 32-bit x86 C code |
| `i686-elf-ld` | Cross-linker to generate ELF kernel |
| `qemu-system-i386` | Emulator to run the kernel |

### ✅ Installation (macOS)

```bash
brew tap SergioBenitez/osxct
brew install i686-elf-toolchain
brew install qemu
