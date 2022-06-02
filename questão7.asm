lw x15, um
lw x12, zero
lw x14, zero
sub x16, x16, x16
#comparações das entradas para efetuar a somas de fatoriais
# guardei os fatoriais em variaveis
# efetuei a soma dos fatoriais e guardei num reg
loop:
lb x10, 1025(x0)

lw x13, seis
beq x14, x13, end

add x14, x14, x15 #contador de 6 letras no máximo

sub x13, x13, x13
beq x10, x13, end

lw x13, zero1
beq x10, x13, _0
add x13, x13, x15
beq x10, x13, _1
add x13, x13, x15
beq x10, x13, _2
add x13, x13, x15
beq x10, x13, _3
add x13, x13, x15
beq x10, x13, _4
add x13, x13, x15
beq x10, x13, _5
add x13, x13, x15
beq x10, x13, _6
add x13, x13, x15
beq x10, x13, _7
add x13, x13, x15
beq x10, x13, _8
add x13, x13, x15
beq x10, x13, _9

_0:
lw x13, um
add x16, x16, x13
jal x11, loop

_1:
lw x13, um
add x16, x16, x13
jal x11, loop

_2:
lw x13, fat2
add x16, x16, x13
jal x11, loop

_3:
lw x13, fat3
add x16, x16, x13
jal x11, loop

_4:
lw x13, fat4
add x16, x16, x13
jal x11, loop

_5:
lw x13, fat5
add x16, x16, x13
jal x11, loop

_6:
lw x13, fat6
add x16, x16, x13
jal x11, loop

_7:
lw x13, fat7
add x16, x16, x13
jal x11, loop

_8:
lw x13, fat8
add x16, x16, x13
jal x11, loop

_9:
lw x13, fat9
add x16, x16, x13
jal x11, loop


#funçao que criei para printar os numeros
end:

lw x17, zero1
lw x14, zero
lw x13, _1000000
bge x16, x13, _f1000000
lw x13, _100000
bge x16, x13, _f100000
lw x13, _10000
bge x16, x13, _f10000
lw x13, _1000
bge x16, x13, _f1000
lw x13, _100
bge x16, x13, _f100
lw x13, _10
bge x16, x13, _f10
blt x16, x13, _f1_

_f1000000:
blt x16, x13, _f500000
sub x16, x16, x13
add x14, x14, x15
jal x11, _f1000000

_f500000:
lw x10, zero
add x10, x17, x14
sb x10, 1024(x0)
lw x13, _100000
lw x14, zero
jal x11, _f100000

_f100000:
blt x16, x13, _f50000
sub x16, x16, x13
add x14, x14, x15
jal x11, _f100000

_f50000:
lw x10, zero
add x10, x17, x14
sb x10, 1024(x0)
lw x13, _10000
lw x14, zero
jal x11, _f10000

_f10000:
blt x16, x13, _f5000
sub x16, x16, x13
add x14, x14, x15
jal x11, _f10000

_f5000:
lw x10, zero
add x10, x17, x14
sb x10, 1024(x0)
lw x13, _1000
lw x14, zero
jal x11, _f1000

_f1000:
blt x16, x13, _f500
sub x16, x16, x13
add x14, x14, x15
jal x11, _f1000

_f500:
lw x10, zero
add x10, x17, x14
sb x10, 1024(x0)
lw x13, _100
lw x14, zero
jal x11, _f100

_f100:
blt x16, x13, _f10
sub x16, x16, x13
add x14, x14, x15
jal x11, _f100

_f10:
lw x10, zero
add x10, x17, x14
sb x10, 1024(x0)
lw x13, _10
lw x14, zero
jal x11, _f10_

_f10_:
blt x16, x13, _f1
sub x16, x16, x13
add x14, x14, x15
jal x11, _f10_

_f1:
 lw x10, zero
 add x10, x14, x17
 sb x10, 1024(x0)
 jal x11, _f1_

_f1_:
 lw x10, zero
 add x10, x17, x16
 sb x10, 1024(x0)
halt
um: .word 1
zero: .word 0
zero1: .word 48
seis: .word 6
fat2: .word 2
fat3: .word 6
fat4: .word 24
fat5: .word 120
fat6: .word 720
fat7: .word 5040
fat8: .word 40320
fat9: .word 362880
dez: .word 10
_1000000: .word 1000000
_100000: .word 100000
_10000: .word 10000
_1000: .word 1000
_100: .word 100
_10: .word 10


