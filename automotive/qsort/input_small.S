    .section .rodata
    .global input_small
    .type   input_small, @object
    .align  4
input_small:
    .incbin "input_small.dat"
input_small_end:
    .global input_small_size
    .type   input_small_size, @object
    .align  4
input_small_size:
    .int    input_small_end - input_small 
