# Questao 1

li x8, 0x10010000	# salva o endereço inicial do array em x8

addi x9, x0, 1		# armazena 1 no registrador x9
sw x9, 0(x8)		# armazena valor de x9 na posicao 0 do array
addi x9, x0, 3		# armazena 1 no registrador x9
sw x9, 4(x8)		# armazena valor de x9 na posicao 1 do array
addi x9, x0, 2		# armazena 2 no registrador x9
sw x9, 8(x8)		# armazena valor de x9 na posicao 2 do array
addi x9, x0, 1 		# armazena 1 no registrador x9
sw x9, 12(x8)		# armazena valor de x9 na posicao 3 do array
addi x9, x0, 4		# armazena 4 no registrador x9
sw x9, 16(x8)		# armazena valor de x9 na posicao 4 do array
addi x9, x0, 5		# armazena 5 no registrador x9
sw x9, 20(x8)		# armazena valor de x9 na posicao 5 do array

# Questao 2

li x14, 0x10010020

lw x9, 0(x8)
add x9, x9, x9 
sw x9, 0(x14)
lw x9, 4(x8)
add x9, x9, x9 
sw x9, 4(x14)
lw x9, 8(x8)
add x9, x9, x9 
sw x9, 8(x14)
lw x9, 12(x8)
add x9, x9, x9 
sw x9, 12(x14)
lw x9, 16(x8)
add x9, x9, x9 
sw x9, 16(x14)
lw x9, 20(x8)
add x9, x9, x9 
sw x9, 20(x14)

# Questao 3

addi x22, x0, 6					# interaçoes
addi  x5, x0, 0  				# head ou indice
li x17, 0x10010000   			# ponteiro para o inicio do array A
li x18, 0x10010020				# ponteiro para o inicio do array B

Faca:
	lw x6, 0(x17)
	lw x7, 0(x18)
	add x10, x10, x6
	add x11, x11, x7
	addi x17, x17, 4
	addi x18, x18, 4
	addi  x5, x5, 1 
	
	
	bne  x22, x5, Faca

# Questao 4

addi x22, x0, 5				    # interaçoes
addi  x5, x0, 0  				# head ou indice
li x17, 0x10010000   			# ponteiro para o inicio do array A

Enquanto:
	lw x6, 0(x17)
	andi x6, x6, 0x00000001
	beq x6, x0, Else  # 0 == 0 vai para 69 si 1 == 0 vai pra else
	sw x10, 0(x17)
	addi  x5, x5, 1
	addi x17, x17, 4
	bne  x22, x5, Enquanto
	Else:	
	addi  x5, x5, 1
	addi x17, x17, 4
	bne  x22, x5, Enquanto




