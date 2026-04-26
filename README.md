Baremetal ARM Embedded Project (No OS)

Overview

This project demonstrates how a simple program can be executed on an ARM-based architecture without relying on any operating system.
The main objective of this project is to understand how low-level execution works in embedded systems, where there is no OS to manage memory, processes, or hardware.

Instead of using a traditional environment, we directly interact with the hardware using a cross-compiler and simulate execution using QEMU.

---

What This Project Shows

- How code is compiled for a different architecture (ARM) using a cross-compiler
- How object files are generated and linked manually
- How an executable (ELF file) is created without OS support
- How the ELF file is converted into a raw binary format
- How the program is executed on a virtual ARM machine using QEMU

---

Step-by-Step Process

1. Writing the Program

A simple C program ("main.c") was written as the starting point.
Since there is no operating system, standard library functions may not fully work, so the focus is on minimal code execution.

---

2. Cross Compilation

The program was compiled using the ARM cross-compiler:

arm-none-eabi-gcc -c main.c -o main.o

This step converts the C code into an object file ("main.o") specifically for ARM architecture.

---

3. Linking (No OS)

The object file was linked manually without using standard libraries:

arm-none-eabi-gcc -nostdlib -Ttext=0x10000 main.o -o output.elf

- "-nostdlib" ensures no OS-level libraries are used
- "-Ttext=0x10000" sets the memory address where the program will be loaded

---

4. Generating Binary File

The ELF file was converted into a raw binary format:

arm-none-eabi-objcopy -O binary output.elf output.bin

This binary file represents the actual machine-level instructions.

---

5. Execution on QEMU

The program was executed using QEMU ARM emulator:

qemu-system-arm -M versatilepb -cpu arm926 -nographic -device loader,file=output.bin,addr=0x10000

- "versatilepb" simulates an ARM development board
- "arm926" specifies the CPU
- "-nographic" runs without GUI
- The binary is loaded directly into memory

---

Tools Used

- GCC ARM Cross Toolchain ("arm-none-eabi-gcc")
- QEMU Emulator
- Kali Linux Environment

---

Key Learning Outcomes

- Understanding of bare-metal programming
- How compilation differs for embedded systems
- Role of linker and memory addresses
- Execution flow without an operating system
- Basics of ARM architecture simulation

---

Output

The program was successfully compiled into an ELF file, converted into a binary, and executed on a virtual ARM machine without using any operating system.

---

Future Improvements

- Adding custom startup code (bootloader / assembly)
- Writing linker scripts for better memory control
- Interfacing with hardware peripherals (GPIO, UART)
- Running the code on a real ARM development board

---

Author

Saksham Upadhyay
