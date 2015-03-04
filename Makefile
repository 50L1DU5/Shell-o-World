##
#
# Writen on a 64 bit machine.
# Not responsible for anything that happens.

ASM=nasm
CC=gcc
LD=ld
RM=rm
EXEC=shello_world shello_world_asm
CFLAGS=-m32 -O4
ASMFLAGS=-f elf32
LDFLAGS=-m elf_i386

all: ${EXEC}
shello_world:
	${CC} ${CFLAGS} -o $@ shello_world.c
shello_world_asm: shello_world.o
	${LD} ${LDFLAGS} -o $@ shello_world.o
shello_world.o:
	${ASM} ${ASMFLAGS} -o $@ shello_world.asm
clean:
	${RM} ${EXEC} *.o
