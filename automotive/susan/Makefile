include ../../Makefile.defs

all: small large

small: susan_small_smooth.elf susan_small_edges.elf susan_small_corners.elf
large: susan_large_smooth.elf susan_large_edges.elf susan_large_corners.elf

susan_small_smooth.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan_small_smooth.elf susan.c input_small.S -lm -DINPUT_SMALL -DMODE=0

susan_small_edges.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan_small_edges.elf susan.c input_small.S -lm -DINPUT_SMALL -DMODE=1

susan_small_corners.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan_small_corners.elf susan.c input_small.S -lm -DINPUT_SMALL -DMODE=2

susan_large_smooth.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan_large_smooth.elf susan.c input_large.S -lm -DINPUT_LARGE -DMODE=0

susan_large_edges.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan_large_edges.elf susan.c input_large.S -lm -DINPUT_LARGE -DMODE=1

susan_large_corners.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan_large_corners.elf susan.c input_large.S -lm -DINPUT_LARGE -DMODE=2

clean:
	rm -rf *.elf
