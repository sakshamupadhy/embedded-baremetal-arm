# Bare-metal ARM (No OS)

This project demonstrates running a program on ARM without an OS using QEMU.

## Run

./build.sh

qemu-system-arm -M versatilepb -cpu arm926 -nographic \
-device loader,file=output.bin,addr=0x10000

## Output
Infinite loop (no visible output)
