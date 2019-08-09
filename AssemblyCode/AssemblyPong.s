.data

.global _start

.equ Um, 0x31
.equ Dois, 0x32
.equ Tres, 0x33
.equ Quatro, 0x34
.equ Cinco, 0x35

.equ clear, 0x01
.equ space, 0x20

.text

# r2 guarda recebe os resultados da intrução customizada do lcd
# r3 guarda valores temporários 
# r4 controla o valor do placar do jogador 1
# r5 controla o valor do placar do jogador 2
# r6 endereço dos botões
# r7 guarda valores temporários
# r8 guarda endereços de instruções temporariamente
# r10 é usado para fazer contadores em loops
# r11 é usado para fazer contadores em loops
# r13 
# r14 contêm o valor 1 (um)
# r15 contêm o endereço de memória da UART

_start:
	addi r14, r0, 1
	movia r15, 0x2030 # endereço de memória da uart
    movia r6, 0x3030 # endereço de memórios dos botões
	
init_lcd:
	movia r3, 0x30
	custom 0, r2, r0, r3
	custom 0, r2, r0, r3
	movia r3, 0x39
	custom 0, r2, r0, r3
	movia r3, 0x14
	custom 0, r2, r0, r3
	movia r3, 0x56
	custom 0, r2, r0, r3
	movia r3, 0x6D
	custom 0, r2, r0, r3
	movia r3, 0x70
	custom 0, r2, r0, r3
	movia r3, 0x0C
	custom 0, r2, r0, r3
	movia r3, 0x06
	custom 0, r2, r0, r3
	movia r3, 0x01
	custom 0, r2, r0, r3

start_game:
    movia r3, clear 
	custom 0, r2, r0, r3 # Limpa o display
    mov r4, r0
    mov r5, r0
    
    # movi r3, 0x80 # Move o cursor para a posição 0 
    call write_player
    movia r3, Um
    call player_x

    movi r3, 0xC0 # Move o cursor para a posição 40 
    call write_player
    movia r3, Dois
    call player_x

    br game

write_player:
    custom 0 r2, r0, r3 #Altera a posição do cursor
	movia r3, 0x50 # P
	custom 0, r2, r14, r3
	movia r3, 0x4C # L
	custom 0, r2, r14, r3
	movia r3, 0x41 # A
	custom 0, r2, r14, r3
	movia r3, 0x59 # Y
	custom 0, r2, r14, r3
	movia r3, 0x45 # E
	custom 0, r2, r14, r3
	movia r3, 0x52 # R
	custom 0, r2, r14, r3
    movia r3, space
	custom 0, r2, r14, r3
    ret

write_won:
    movia r3, space
	custom 0, r2, r14, r3
    movia r3, 0x57 # W
	custom 0, r2, r14, r3
	movia r3, 0x4F # O
	custom 0, r2, r14, r3
	movia r3, 0x4E # N
	custom 0, r2, r14, r3   
    ret
    
player_x:
	custom 0, r2, r14, r3	# Escreve o ID do jogador
    movia r3, 0x3A # doisPontos
	custom 0, r2, r14, r3
    movia r3, space
	custom 0, r2, r14, r3
    custom 0, r2, r14, r4 
    ret

updateScore_p1:
    movi r3, 0x8B 
    custom 0 r2, r0, r3 # Move o cursor para a posição 11 (0B)
    mov r7, r4
    call converse_number
    custom 0, r2, r14, r3 # Escreve o novo placar
    br game
    
updateScore_p2:
    movi r3, 0xCB 
    custom 0 r2, r0, r3 # Move o cursor para a posição 51 (4B)
    mov r7, r5
    call converse_number
    custom 0, r2, r14, r3 # Escreve o novo placar
    br game

converse_number:
    beq r7, r14, lcd_hex1

    movi r3, 2
    beq r7, r3, lcd_hex2

    movi r3, 3
    beq r7, r3, lcd_hex3

    movi r3, 4
    beq r7, r3, lcd_hex4

lcd_hex1:
    movia r3, um 
    ret

lcd_hex2:
    movia r3, Dois 
    ret

lcd_hex3:
    movia r3, Tres 
    ret

lcd_hex4:
    movia r3, Quatro 
    ret

delay:
	addi r10, r10, 1
	ble r10, r11, delay
	ret

goal_player1:
    addi r4, r4, 1
    movi r3, 5
    beq r4, r3, player1_won
    br updateScore_p1
    
goal_player2:
    addi r5, r5, 1
    movi r3, 5
    beq r5, r3, player2_won
    br updateScore_p2

player1_won:
    movia r3, clear # Limpa o display
	custom 0, r2, r0, r3
    call write_player
    movia r3, Um
    custom 0, r2, r14, r3
    call write_won
    br wait_back

player2_won
    movia r3, clear # Limpa o display
	custom 0, r2, r0, r3
    movi r3, 0xC0 # Move o cursor para a posição 40 
    custom 0, r2, r0, r3
    call write_player
    movia r3, Dois
    custom 0, r2, r14, r3
    call write_won
    br wait_back

wait_back:
    nextpc r8 # pega o endereço da próxima instrução (para execução de um loop para observação dos botões)
	addi r10, r0, 0
	movia r11, 400000
	call delay #chama label delay 

	ldbuio r3, 0(r6) # carrega a situação dos botões
	beq r3, r14, start_game 
    callr r8 # desvia a execução para o endereço armazenado no registrador, neste caso 'addi r10, r0, 0'

game:
    nextpc r8 # pega o endereço da próxima instrução (para execução de um loop para observação dos botões)
	addi r10, r0, 0
	movia r11, 400000
	call delay #chama label delay 
	
	ldbuio r3, 0(r6) # carrega a situação dos botões
	addi r7, r0, 2
	beq r3, r7, goal_player1 # se o valor dos botões for igual a 2 desvia para a label frase_selection1

	addi r7, r0, 4
	beq r3, r7, goal_player2 # se o valor dos botões for igual a 4 desvia para a label led2 (rola pra baixo)
	
    callr r8 # desvia a execução para o endereço armazenado no registrador, neste caso 'addi r10, r0, 0'
    





    

