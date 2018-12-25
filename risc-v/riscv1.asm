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