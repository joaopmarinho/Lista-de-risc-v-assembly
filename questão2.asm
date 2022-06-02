lw x10, a
lw x11, b
lw x12, c
lw x13, x
lw x14, aux
lw x15, aux1
lw x16, um
#basicamente fiz um conjunto de comparações como pedido no comando da questão

bge x10, x13, ponto1
bge x13, x10, fim
ponto1:
bge x14, x11, ponto2
bge x11, x14, fim

ponto2:
bltu x15, x12, resultado
bltu x12, x15, fim

resultado:
add x13, x13, x16

fim:
halt
a: .word 0
b: .word 0
c: .word 26
x: .word 0
um: .word 1
aux: .word 32
aux1: .word 25
