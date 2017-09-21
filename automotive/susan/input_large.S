    .section .rodata
    .global input_large
    .type   input_large, @object
    .align  4
input_large:
    .incbin "input_large.pgm"
input_large_end:
    .global input_large_size
    .type   input_large_size, @object
    .align  4
input_large_size:
    .int    input_large_end - input_large 
