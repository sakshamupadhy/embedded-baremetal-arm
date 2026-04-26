#!/bin/bash

arm-none-eabi-gcc -nostdlib -Ttext=0x10000 main.c -o output.elf
arm-none-eabi-objcopy -O binary output.elf output.bin

echo "Build complete!"
