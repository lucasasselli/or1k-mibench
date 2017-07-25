 # -mboard=                    Link with libgloss configuration suitable for this board
 # -mcmov                      Use conditional move instructions
 # -mcompat-delay              Assume branches and jumps have a delay slot, but fill them with nops
 # -mdelay                     Assume branches and jumps have a delay slot
 # -mdouble-float              Allow hardware floating-point instructions to cover both 32-bit and 64-bit operations
 # -mhard-div                  Use hardware division
 # -mhard-float                Use hardware floating point
 # -mhard-mul                  Use hardware multiplication
 # -mnewlib                    Compile for the Linux/Gnu/newlib based toolchain
 # -mno-delay                  Assume branches and jumps do not have a delay slot
 # -mpadstruct                 Make structs a multiple of 4 bytes (warning: ABI altered)
 # -mredzone=                  Set the size of the stack below sp that is assumed to be safe from interrupts.
 # -mror                       Emit ROR instructions
 # -msext                      Use sign-extending instructions
 # -msoft-div                  Do not use hardware division
 # -msoft-float                Do not use hardware floating point
 # -msoft-mul                  Do not use hardware multiplication

CC=or1k-elf-gcc
FLAGS='-static -O3 -mhard-div -mhard-mul'


all:
	(cd automotive/basicmath; make all CC=$(CC) FLAGS=$(FLAGS))
	(cd automotive/bitcount; make all CC=$(CC) FLAGS=$(FLAGS))
	(cd automotive/qsort; make all CC=$(CC) FLAGS=$(FLAGS))
	(cd automotive/susan; make all CC=$(CC) FLAGS=$(FLAGS))

clean:
	(cd automotive/basicmath; make clean)
	(cd automotive/bitcount; make clean)
	(cd automotive/qsort; make clean)
	(cd automotive/susan; make clean)
