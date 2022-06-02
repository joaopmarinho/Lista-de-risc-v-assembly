lw x10, a
lw x11, b
lw x12, m
add x12, x12, x10
sub x12, x10, x11
#desconsiderei a necessidade de usar
#condicional, já que temos que o único 
#caso em que o if seria adentrado daria 0
#então o mesmo funcionaria entre m = a-b
#e m= b-a para essa situação em particular
#logo podemos nos abster de usar uma instrução a mais
# para processar o código e ir diretamente ao ponto
halt
a: .byte 0b101
b: .byte 0b1001
m: .byte 0x0



