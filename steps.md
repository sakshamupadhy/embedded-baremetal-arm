# Bare-metal ARM Steps

## Compile
arm-none-eabi-gcc -nostdlib -Ttext=0x10000 main.c -o output.elf

## Convert
arm-none-eabi-objcopy -O binary output.elf output.bin

## Run
qemu-system-arm -M versatilepb -cpu arm926 -nographic \
-device loader,file=output.bin,addr=0x10000

## Output
Program runs successfully (infinite loop, no visible output)
