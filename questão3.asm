lw x10, first
lw x11, second
lw x13, vinte
sll x12, x10, x13
or x11, x12, x11

halt
first: .word 0xffff0000
second: .word 0x0000ffff   
vinte: .byte 16
#usando o 16 bits para mover quatro posições a esquerda
#assim poder fazer um or(soma) e obter o resultado dos bits referidos
#deslocando para a posição e armazenando num novo reg para mostrar o resultado
#usando um registrador reserva os bits do x10 n serão movidos
#guardei o valor pós efetuação do shift left num outro registrador
