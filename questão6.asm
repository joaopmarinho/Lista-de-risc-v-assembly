lw x18, zero #placar da primeira pessoa
lw x19, zero #placar da segunda pessoa
lw x16, zero
lw x12, zero
lw x17, zero
lw x14, um
lw x15, number
#comparações efetuadas para somar com os respectivos pesos de cada letra
loop:

lb x10, 1025(x0)

add x12, x12, x15
beq x10, x12, point1#a
add x12, x12, x14
beq x10, x12, point3#b
add x12, x12, x14
beq x10, x12, point3#c
add x12, x12, x14
beq x10, x12, point2#d
add x12, x12, x14
beq x10, x12, point1#e
add x12, x12, x14
beq x10, x12, point4#f
add x12, x12, x14
beq x10, x12, point2#g
add x12, x12, x14
beq x10, x12, point4#h
add x12, x12, x14
beq x10, x12, point1#i
add x12, x12, x14
beq x10, x12, point6#j
add x12, x12, x14
beq x10, x12, point5#k
add x12, x12, x14
beq x10, x12, point6#l
add x12, x12, x14
beq x10, x12, point3#m
add x12, x12, x14
beq x10, x12, point3#n
add x12, x12, x14
beq x10, x12, point1#o
add x12, x12, x14
beq x10, x12, point3#p
add x12, x12, x14
beq x10, x12, point7#q
add x12, x12, x14
beq x10, x12, point5#r
add x12, x12, x14
beq x10, x12, point5#s
add x12, x12, x14
beq x10, x12, point2#t
add x12, x12, x14
beq x10, x12, point1#u
add x12, x12, x14
beq x10, x12, ponto4#v
add x12, x12, x14
beq x10, x12, ponto4#w
add x12, x12, x14
beq x10, x12, point6#x
add x12, x12, x14
beq x10, x21, point4#y
add x12, x12, x14
beq x10, x12, point7#z
sub x12, x12, x12
beq x10, x17, nextloop

jal x11, nextloop

point1:
lw x13, um
add x18, x18, x13
sub x12, x12, x12
jal x11, loop
point2:
lw x13, dois
add x18, x18, x13
sub x12, x12, x12
jal x11, loop
point3:
lw x13, tres
add x18, x18, x13
sub x12, x12, x12
jal x11, loop
point4:
lw x13, quatro
add x18, x18, x13
sub x12, x12, x12
jal x11, loop
point5:
lw x13, cinco
add x18, x18, x13
sub x12, x12, x12
jal x11, loop
point6:
lw x13, oito
add x18, x18, x13
sub x12, x12, x12
jal x11, loop
point7:
lw x13, dez
add x18, x18, x13
sub x12, x12, x12
jal x11, loop

nextloop:

sub x12, x12, x12

#comparações da segunda palavra

loop2:

lb x10, 1025(x0)

add x12, x12, x15
beq x10, x12, ponto1#a
add x12, x12, x14
beq x10, x12, ponto3#b
add x12, x12, x14
beq x10, x12, ponto3#c
add x12, x12, x14
beq x10, x12, ponto2#d
add x12, x12, x14
beq x10, x12, ponto1#e
add x12, x12, x14
beq x10, x12, ponto4#f
add x12, x12, x14
beq x10, x12, ponto2#g
add x12, x12, x14
beq x10, x12, ponto4#h
add x12, x12, x14
beq x10, x12, ponto1#i
add x12, x12, x14
beq x10, x12, ponto6#j
add x12, x12, x14
beq x10, x12, ponto5#k
add x12, x12, x14
beq x10, x12, ponto6#l
add x12, x12, x14
beq x10, x12, ponto3#m
add x12, x12, x14
beq x10, x12, ponto3#n
add x12, x12, x14
beq x10, x12, ponto1#o
add x12, x12, x14
beq x10, x12, ponto3#p
add x12, x12, x14
beq x10, x12, ponto7#q
add x12, x12, x14
beq x10, x12, ponto5#r
add x12, x12, x14
beq x10, x12, ponto5#s
add x12, x12, x14
beq x10, x12, ponto2#t
add x12, x12, x14
beq x10, x12, ponto1#u
add x12, x12, x14
beq x10, x12, ponto4#v
add x12, x12, x14
beq x10, x12, ponto4#w
add x12, x12, x14
beq x10, x12, ponto6#x
add x12, x12, x14
beq x10, x12, ponto4#y
add x12, x12, x14
beq x10, x12, ponto7#z
sub x12, x12, x12
beq x10, x17, end

jal x11, end

ponto1:
lw x13, um
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2
ponto2:
lw x13, dois
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2
ponto3:
lw x13, tres
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2
ponto4:
lw x13, quatro
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2
ponto5:
lw x13, cinco
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2
ponto6:
lw x13, oito
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2
ponto7:
lw x13, dez
add x16, x16, x13
sub x12, x12, x12
jal x11, loop2

#comparação entre os placares e print do placar/ do vencedor

end:

beq x18, x16, empate
bge x18, x16, ganhou1
bge x16, x18, ganhou2

empate:
lw x10, e
sb x10, 1024(x0)
lw x10, m
sb x10, 1024(x0)
lw x10, p
sb x10, 1024(x0)
lw x10, a
sb x10, 1024(x0)
lw x10, t
sb x10, 1024(x0)
lw x10, e
sb x10, 1024(x0)

jal x11, victory

ganhou1:
lw x10, j1
sb x10, 1024(x0)
lw x10, o
sb x10, 1024(x0)
lw x10, g
sb x10, 1024(x0)
lw x10, a
sb x10, 1024(x0)
lw x10, d
sb x10, 1024(x0)
lw x10, o
sb x10, 1024(x0)
lw x10, r
sb x10, 1024(x0)
lw x10, space
sb x10, 1024(x0)
lw x10, u
sb x10, 1024(x0)
lw x10, m
sb x10, 1024(x0)
lw x10, space
sb x10, 1024(x0)
lw x10, v
sb x10, 1024(x0)
lw x10, e
sb x10, 1024(x0)
lw x10, n
sb x10, 1024(x0)
lw x10, c
sb x10, 1024(x0)
lw x10, zero
lw x10, e
sb x10, 1024(x0)
lw x10, u
sb x10, 1024(x0)

jal x11, victory

ganhou2:
lw x10, j1
sb x10, 1024(x0)
lw x10, o
sb x10, 1024(x0)
lw x10, g
sb x10, 1024(x0)
lw x10, a
sb x10, 1024(x0)
lw x10, d
sb x10, 1024(x0)
lw x10, o
sb x10, 1024(x0)
lw x10, r
sb x10, 1024(x0)
lw x10, space
sb x10, 1024(x0)
lw x10, d
sb x10, 1024(x0)
lw x10, o
sb x10, 1024(x0)
lw x10, zero
lw x10, i
sb x10, 1024(x0)
lw x10, sletra
sb x10, 1024(x0)
lw x10, space
sb x10, 1024(x0)
lw x10, v
sb x10, 1024(x0)
lw x10, e
sb x10, 1024(x0)
lw x10, n
sb x10, 1024(x0)
lw x10, c
sb x10, 1024(x0)
lw x10, e
sb x10, 1024(x0)
lw x10, u
sb x10, 1024(x0)

victory:

lw x10, space
sb x10, 1024(x0)

lw x17, zero1
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

lw x10, x
sb x10, 1024(x0)

lw x17, zero1
sub x14, x14, x14
lw x15, um
lw x13, _10
bge x16, x13, func10
blt x16, x13, func1

func10:
blt x16, x13, fum1
sub x16, x16, x13
add x14, x14, x15
jal x11, func10

fum1:
 add x10, x14, x17
 sb x10, 1024(x0)
 jal x11, func1

func1:
 add x10, x17, x16
 sb x10, 1024(x0)

halt
zero1: .word 48
zero: .word 0
number: .word 65
um: .word 1
dois: .word 2
tres: .word 3
quatro: .word 4
cinco: .word 5
oito: .word 8
quarenta: .word 48
dez: .word 10
string1: .string "1"
string2: .string "2"
_1000000: .word 1000000
_100000: .word 100000
_10000: .word 10000
_1000: .word 1000
_100: .word 100
_10: .word 10
j1: .word 106
o: .word 111
g: .word 103
a: .word 97
d: .word 100
r: .word 114
u: .word 117
m: .word 109
i: .word 105
sletra: .word 115
v: .word 118
e: .word 101
n: .word 110
c: .word 99
space: .word 32
x: .word 120
p: .word 112
t: .word 116

