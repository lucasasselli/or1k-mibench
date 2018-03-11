include ../../Makefile.defs

FILE = bitcnt_1.c bitcnt_2.c bitcnt_3.c bitcnt_4.c bitcnts.c bitstrng.c bstr_i.c 

all: bitcnts-small.elf bitcnts-large.elf

bitcnts-small.elf: ${FILE}
	$(CC) $(CFLAGS) ${FILE} -o bitcnts-small.elf -DINPUT_SMALL

bitcnts-large.elf: ${FILE}
	$(CC) $(CFLAGS) ${FILE} -o bitcnts-large.elf -DINPUT_LARGE

clean:
	rm -rf *.elf

