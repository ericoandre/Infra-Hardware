# Assumindo que a, b, c corresponde aos registradores x5 x6 x7

addi x5, x0, 5
addi x7, x0, 10

addi x9, x0, 1
addi x10, x0, 2

switch:

caso1:
bne x9, x5, caso2
addi x6, x7, 1
beq x0, x0 exit

caso2:
bne x10, x5, default
addi x6, x7, 2
beq x0, x0 exit

default:
add x6, x0, x7
beq x0, x0 exit

exit:
 
