lw x12, a
lw x13, e
lw x14, i
lw x15, o
lw x16, u
lw x17, zero1
lw x18, um
lw x19, zero1
#basicamente comparações e somas efetuadas caso as letras sejam iguais
loop:
lb x10, 1025(x0)
beq x10, x12, soma
beq x10, x13, soma
beq x10, x14, soma
beq x10, x15, soma
beq x10, x16, soma
beq x10, x19, exit
jal x11, loop

soma:
add x17, x17, x18
jal x11, loop
#printando até no max 100 com a função de printar
exit:
add x18, x19, x17
lw x17, zero
sub x14, x14, x14
lw x15, um
lw x13, _10
bge x18, x13, _f10_
blt x18, x13, _f1_

_f10_:
blt x18, x13, _f1
sub x18, x18, x13
add x14, x14, x15
jal x11, _f10_

_f1:
 add x10, x14, x17
 sb x10, 1024(x0)
 jal x11, _f1_

_f1_:
 add x10, x17, x18
 sb x10, 1024(x0)

halt

halt
zero: .word 48
zero1: .word 0
um: .word 1
a: .word 'a'
e: .word 'e'
i: .word 'i'
o: .word 'o'
u: .word 'u'
_100: .word 100
_10: .word 10

