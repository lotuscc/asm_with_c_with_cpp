
Inc =	-Isrc/inc

OBJINC = obj

ASM = gcc
ASMFLAGS = -fno-builtin -fno-PIC -Wall -ggdb -m32 -gstabs -fno-stack-protector -nostdinc
# ASMFLAGS = -ggdb -m32

CC		= gcc
CFLAGS	= -O0 -fno-builtin -Wall -ggdb -m32 -gstabs -fno-stack-protector -nostdinc 
# CFLAGS = -ggdb -m32

CPP 	= g++
CPPFLAGS = -O0 -fno-builtin -Wall -ggdb -m32 -gstabs -fno-stack-protector -nostdinc 
# CPPFLAGS = -ggdb -m32 

LD = ld
# LDFLAGS = -m elf_i386 -nostdlib
LDFLAGS = -m elf_i386

all:
	$(CPP) $(Inc) $(CPPFLAGS) -c ./src/cpp/main_cpp.cpp -o $(OBJINC)/main_cpp.o
	$(CC) $(Inc) $(CFLAGS) -c ./src/c/main_c.c -o $(OBJINC)/main_c.o
	$(ASM) $(Inc) $(ASMFLAGS) -c ./src/asm/asm_base.S -o $(OBJINC)/asm_base.o

	$(LD) $(LDFLAGS) -e main_cpp $(OBJINC)/main_cpp.o $(OBJINC)/main_c.o $(OBJINC)/asm_base.o
clean:
	rm $(OBJINC)/*.o
gdb:
	gdb a.out --tui