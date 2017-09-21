include ../../Makefile.defs

FILE1 = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c
FILE2 = basicmath_large.c   rad2deg.c  cubic.c   isqrt.c

all: basicmath_small.elf basicmath_large.elf

basicmath_small.elf: ${FILE1} Makefile
	$(CC) $(CFLAGS) ${FILE1} -o basicmath_small.elf -lm
basicmath_large.elf: ${FILE2} Makefile
	$(CC) $(CFLAGS) ${FILE2} -o basicmath_large.elf -lm

clean:
	rm -rf *.elf
