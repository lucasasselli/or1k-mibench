include ../../Makefile.defs

FILE1 = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c
FILE2 = basicmath_large.c   rad2deg.c  cubic.c   isqrt.c
FILE3 = basicmath_tiny.c   rad2deg.c  cubic.c   isqrt.c

all: basicmath-tiny.elf basicmath-small.elf basicmath-large.elf

basicmath-tiny.elf: ${FILE3} Makefile
	$(CC) $(CFLAGS) ${FILE3} -o basicmath-tiny.elf -lm
basicmath-small.elf: ${FILE1} Makefile
	$(CC) $(CFLAGS) ${FILE1} -o basicmath-small.elf -lm
basicmath-large.elf: ${FILE2} Makefile
	$(CC) $(CFLAGS) ${FILE2} -o basicmath-large.elf -lm

clean:
	rm -rf *.elf
