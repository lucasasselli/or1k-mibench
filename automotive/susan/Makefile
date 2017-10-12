include ../../Makefile.defs

all: small large

small: susan-small-smooth.elf susan-small-edges.elf susan-small-corners.elf
large: susan-large-smooth.elf susan-large-edges.elf susan-large-corners.elf

susan-small-smooth.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan-small-smooth.elf susan.c input_small.S -lm -DINPUT_SMALL -DMODE=0

susan-small-edges.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan-small-edges.elf susan.c input_small.S -lm -DINPUT_SMALL -DMODE=1

susan-small-corners.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan-small-corners.elf susan.c input_small.S -lm -DINPUT_SMALL -DMODE=2

susan-large-smooth.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan-large-smooth.elf susan.c input_large.S -lm -DINPUT_LARGE -DMODE=0

susan-large-edges.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan-large-edges.elf susan.c input_large.S -lm -DINPUT_LARGE -DMODE=1

susan-large-corners.elf: susan.c Makefile
	$(CC) $(CFLAGS) -o susan-large-corners.elf susan.c input_large.S -lm -DINPUT_LARGE -DMODE=2

clean:
	rm -rf *.elf
