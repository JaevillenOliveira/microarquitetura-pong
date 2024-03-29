.data

.global _start

# .equ <nome> <valor hex>
# Este bloco armazena os valores, em hexadecimal, correspondentes ao que deve ser printado no display 

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
# r13 é usado para acessar o endereço de memória da bola e das barras esquerda e direita
# r14 contêm o valor 1 (um)

_start:
	addi r14, r0, 1
    movia r6, 0x3030 # endereço de memórios dos botões
    movia r4, 0x2020
    movia r5, 0x2030
	
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
    addi r10, r0, 0
    movia r11, 400000
    call delay #chama label delay 
    
    movia r3, clear 
	custom 0, r2, r0, r3 # Limpa o display

    call write_player
    movia r3, Um
    call player_x

    movi r3, 0xC0 # Move o cursor para a posição 40 
    call write_player
    movia r3, Dois
    call player_x

    br game

write_player:
    custom 0, r2, r0, r3 #Altera a posição do cursor
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

    subi sp, sp,4
    stw ra, 0(sp)

    mov r7, r4
    call converse_number
    custom 0, r2, r14, r3 

    ldw ra, 0(sp)
    addi sp, sp, 4
    ret

updateScore_p1:
    subi sp, sp,4
    stw ra, 0(sp)

    movi r3, 0x89 
    custom 0, r2, r0, r3 # Move o cursor para a posição 11 (0B)
    ldbuio r7, 0(r4)
    call converse_number
    custom 0, r2, r14, r3 # Escreve o novo placar
    movi r3, 5
    beq r7, r3, player1_won

    ldw ra, 0(sp)
    addi sp, sp, 4
    ret
    
updateScore_p2:
    subi sp, sp,4
    stw ra, 0(sp)

    movi r3, 0xC9 
    custom 0, r2, r0, r3 # Move o cursor para a posição 51 (4B)
    ldbuio r7, 0(r5)
    call converse_number
    custom 0, r2, r14, r3 # Escreve o novo placar
    movi r3, 5
    beq r7, r3, player2_won

    ldw ra, 0(sp)
    addi sp, sp, 4  
    ret

converse_number:
    beq r7, r0, lcd_hex0
    beq r7, r14, lcd_hex1

    movi r3, 2
    beq r7, r3, lcd_hex2

    movi r3, 3
    beq r7, r3, lcd_hex3

    movi r3, 4
    beq r7, r3, lcd_hex4

    movi r3, 5
    beq r7, r3, lcd_hex5

lcd_hex0:
    movia r3, 0x30 
    ret

lcd_hex1:
    movia r3, Um 
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

lcd_hex5:
    movia r3, Cinco 
    ret

delay:
	addi r10, r10, 1
	ble r10, r11, delay
	ret

player1_won:
    addi r10, r0, 0
	movia r11, 900000
	call delay #chama label delay 
    movia r3, clear # Limpa o display
	custom 0, r2, r0, r3
    call write_player
    movia r3, Um
    custom 0, r2, r14, r3
    call write_won
    addi r10, r0, 0
	movia r11, 5000000
	call delay #chama label delay 
    br start_game

player2_won:
    addi r10, r0, 0
	movia r11, 900000
	call delay #chama label delay 
    movia r3, clear # Limpa o display
	custom 0, r2, r0, r3
    movi r3, 0xC0 # Move o cursor para a posição 40 
    custom 0, r2, r0, r3
    call write_player
    movia r3, Dois
    custom 0, r2, r14, r3
    call write_won
    addi r10, r0, 0
	movia r11, 5000000
	call delay #chama label delay 
    br start_game

game:
	addi r10, r0, 0
	movia r11, 400000
	call delay #chama label delay 

    call updateScore_p1
    call updateScore_p2

    br game

