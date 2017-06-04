all:
	(cd automotive/basicmath; make all)
	(cd automotive/bitcount; make bitcnts)
	(cd automotive/qsort; make all)
	(cd automotive/susan; make susan)

clean:
	(cd automotive/basicmath; make clean)
	(cd automotive/bitcount; make clean)
	(cd automotive/qsort; make clean)
	(cd automotive/susan; make clean)
