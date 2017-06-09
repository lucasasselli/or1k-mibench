	.text
	.align	4
	.global main
main:
	l.addi r1,r0, 5
	l.addi r2,r0, 0
	lf.div.s r3, r1, r2
