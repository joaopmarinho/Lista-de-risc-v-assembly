lb x10, 0(x0)
sb x10, 1030(x0)
lw x13, um
#o código funciona de forma que voce escolhe um valor para a temperatura
#e ao compialr esse valor e colocar o programa para rodar
#o led respectivo vai ser aceso
# como n foi especificado na questão
# só aceito um numero por vez e é preciso compilar novamente para mudar de cor
# no caso trocar o led
loop:

	lh x10, 1031(x0)

    lw x12, dez
	bge x12, x10, redL #<=10
    
    lw x12, quinze
    bge x12, x10, yellowL #<=15

    lw x12, vinte
    bge x12, x10, yellowR #<=25

    lw x12, vint5
    bge x12, x10, greenL #<=20

    lw x12, trinta
    bge x12, x10, greenR #<=30    
    bge x10, x12, redR#>30

	jal x11, loop

    redL:
		sub x11, x11, x11
	addi x11, x0, 3
  	sw x11, 1033(x0)

  	sw x12, 1034(x0)
  	addi x12, x12, 511
  	sw x12, 1034(x0)
  	addi x12, x12, 511

    jal x11, redL
    
    yellowL:

	sub x11, x11, x11
	addi x11, x0, 6
  	sw x11, 1033(x0)

  	sw x12, 1034(x0)
  	addi x12, x12, 511
  	sw x12, 1034(x0)
  	addi x12, x12, 511

    jal x11, yellowL
    
    yellowR:
    
	sub x11, x11, x11
	addi x11, x0, 9
  	sw x11, 1033(x0)

  	sw x12, 1034(x0)
  	addi x12, x12, 511
  	sw x12, 1034(x0)
  	addi x12, x12, 511

    jal x11, yellowR
	
    greenL:
	
	sub x11, x11, x11
	addi x11, x0, 10
  	sw x11, 1033(x0)

  	sw x12, 1034(x0)
  	addi x12, x12, 511
  	sw x12, 1034(x0)
  	addi x12, x12, 511

    jal x11, greenL
    
    greenR:
	
	sub x11, x11, x11
	addi x11, x0, 11
  	sw x11, 1033(x0)

  	sw x12, 1034(x0)
  	addi x12, x12, 511
  	sw x12, 1034(x0)
  	addi x12, x12, 511
    
    jal x11, greenR

    redR:
	
	sub x11, x11, x11
	addi x11, x0, 5
  	sw x11, 1033(x0)

  	sw x12, 1034(x0)
  	addi x12, x12, 511
  	sw x12, 1034(x0)
  	addi x12, x12, 511

    jal x11, redR
    
halt
verde: .word 0
zero: .byte 0
um: .byte 1
dez: .word 200
quinze: .word 300
vinte: .word 400
vint5: .word 500
trinta: .word 600


