include ../../Makefile.defs

all: qsort_small.elf qsort_large.elf

qsort_small.elf: input_small.S qsort_small.c
	$(CC) $(CFLAGS) qsort_small.c input_small.S -o qsort_small.elf -lm

qsort_large.elf: input_large.S qsort_large.c
	$(CC) $(CFLAGS) qsort_large.c input_large.S -o qsort_large.elf -lm

clean:
	rm -rf *.elf
