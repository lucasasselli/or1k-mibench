include ../../Makefile.defs

FLAGS=-static -O3
FILE = bitcnt_1.c bitcnt_2.c bitcnt_3.c bitcnt_4.c bitcnts.c bitstrng.c bstr_i.c 

all: bitcnts

bitcnts: ${FILE} Makefile
	$(CC) $(CFLAGS) ${FILE} -o bitcnts

clean:
	rm -rf bitcnts output*
