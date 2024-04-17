nasm -f win32 lzjat_decode.s -o lzjat_decode.o
cc -std=c99 -c main.c -O2 -Wpedantic
cc lzjat_decode.o main.o -o main.exe
