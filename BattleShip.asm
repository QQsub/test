	.data 
writeP1: .asciiz "Player 1's board:\n"            
writeP2: .asciiz "Player 2's board:\n"                    
guide_sen:.asciiz "                   ~The player will first take turn putting ships in their board.~\n                          ~There will be 3 2x1, 2 3x1 and 1 4x1 ships.~\n                               ~the board will be mark like this~\n"
guide_sen2:.asciiz"\n                        ~format: row_bow column_bow row_stern column_stern~\n                  ~Example: If player enter: 0 0 0 1, the board will look like this!~ 	\n"
guide_sen3:.asciiz"\n                 ~When start playing, player then take turn hitting the opponent ship~\n                               ~Format: row_column (no space). EX: 12~\n\n"
guide_sen4:.asciiz"\n                       ~The player will only see opponent board when playing:~\n                                        ~X mark hit cell~\n                                        ~0 mark miss cell~\n                                        ~. mark unknown~\n\n\n                       ~player wins when all of opponent ships have been sink~	\n\n\n\n\n"
shootship: .asciiz"                              ____  _   _  ___   ___ _____ _ _ _                                      ,:\n                             / ___|| | | |/ _ \\ / _ \\_   _| | | |                                   ,' |\n                             \\___ \\| |_| | | | | | | || | | | | |                                  /   :\n                              ___) |  _  | |_| | |_| || | |_|_|_|                               --'   /\n                             |____/|_| |_|\\___/ \\___/ |_| (_|_|_)                               \\/ /:/\n                                                                                                / ://_\\\n                                                                                             __/   /\n                                                                                             )'-. /\n                                                                                             ./  :\\\n                                                     .                                        /.' '\n                                   .                 |                                      '/'\n                                   +                 |                                      +\n                          .        |                *+W+-*                                 '\n             .           +y        +W+              . H                 .\n          .  +y            |I.   y  |               ! H= .           .  ^\n          !   \\     .     |H '. /   |  ___.        .! H  !   +--.--y !  V\n          !    \\     \\  +=|H|=='.=+ | |====\\   _  '_H_H__H_. H_/=  J !  !\n        . !     \\'    VVV_HHH_/__'._H |  E  \\_|=|_|========|_|==|____H. ! _______.\n        I-H_I=I=HH_==_|I_IIIII_I_I_=HH|======.I-I-I-=======-I=I=I=I_=H|=H'===I=I/\n        \\                                                                      ,\n         |                                                                    /\n         .___________________________________________________________________'\n\n"
shoot: .asciiz"                               ____  _   _  ___   ___ _____ _ _ _ \n                              / ___|| | | |/ _ \\ / _ \\_   _| | | |\n                              \\___ \\| |_| | | | | | | || | | | | |\n                               ___) |  _  | |_| | |_| || | |_|_|_|\n                              |____/|_| |_|\\___/ \\___/ |_| (_|_|_)\n"
text: .asciiz "CA.txt"
subm:  .asciiz "                                             | \\\n                                             '.|\n                             _-   _-    _-  _-||    _-    _-  _-   _-    _-    _-\n                               _-    _-   - __||___    _-       _-    _-    _-\n                            _-   _-    _-  |   _   |       _-   _-    _-\n                              _-    _-    /_) (_) (_\\        _-    _-       _-\n                                      _.-'           `-._      ________       _-\n                                _..--`                   `-..'       .'\n                            _.-'  o/o                     o/o`-..__.'        ~  ~\n                         .-'      o|o                     o|o      `.._.  // ~  ~\n                         `-._     o|o                     o|o        |||<|||~  ~\n                             `-.__o\o                     o|o       .'-'  \\\\ ~  ~\n                                  `-.______________________\\_...-``'.       ~  ~\n                                                            `._______`.\n"
bigship: .asciiz "                             ~~~             |\n                        ~~~~     ~~~~      -----                    |\n                             ~~~           )___(                  -----\n                                             |                    )___(\n                                         ---------                  |\n                                        /         \\              -------\n                                       /___________\\            /       \\\n                                             |                 /_________\\\n                                      ---------------               |\n                                     /               \\        -------------\n                                    /                 \\      /             \\\n                                   /___________________\\    /_______________\\\n                                 ____________|______________________|__________\n                                  \\_                                        _/\n                                    \\______________________________________/\n                             ~~..             ...~~~.           ....~~~...     ..~\n"
smallship: .asciiz "                                          ____\n                                           ---|\n                               \\/            /|     \\/\n                                            / |\\\n                                           /  | \\        \\/\n                                          /   || \\\n                                         /    | | \\\n                                        /     | |  \\\n                                       /      | |   \\\n                                      /       ||     \\\n                                     /        /       \\\n                                    /________/         \\\n                                    ________/__________--/\n                              ~~~   \___________________/\n                                       ~~~~~~~~~~       ~~~~~~~~\n                              ~~~~~~~~~~~~~     ~~~~~~~~~\n                                                          ~~~~~~~~~\n"
wlcm:.asciiz "__      __      _                             _               _           _    _    _           _     _  _ __ \n\\ \\    / / ___ | | __  ___  _ __   ___       | |_  ___       | |__  __ _ | |_ | |_ | | ___  ___| |_  (_)| '_ \\ \n \\ \\/\\/ / / -_)| |/ _|/ _ \\| '  \\ / -_)      |  _|/ _ \\      |  _ \\/ _` ||  _||  _|| |/ -_)(_-/|   \\ | || .__/\n  \\_/\\_/  \\___||_|\\__|\\___/|_|_|_|\\___|       \\__|\\___/      |____/\\__/_| \\__| \\__||_|\\___|/__/|_||_||_||_|   \n\n\n"
go: .asciiz""
guide: .asciiz""
outgame: .asciiz ""
menu_choice: 		.asciiz "\n\n   .---------------.              .---------------.               .---------------. \n  | .-------------. |            | .-------------. |             | .-------------. |\n  | |  1. Start   | |            | |  2. Guide   | |             | |  3. Quit    | |\n  | '-------------' |            | '-------------' |             | '-------------' |\n   '---------------'              '---------------'               '---------------' \n\n\n"
startmenu: 		.asciiz "  =======================================[  START MENU!  ]=========================================\n"
guidemenu: 		.asciiz "  =======================================[  Guide!  ]=========================================\n"
endofgame: .asciiz "\n                                 »»------- END OF GAME -------««"
IIII: .asciiz "Enter index 1-3 to choose: "
board1: .word   0 0 0 0 0 0 0 
		0 0 0 0 0 0 0	
		0 0 0 0 0 0 0	
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
board2: .word   0 0 0 0 0 0 0
		0 0 0 0 0 0 0	
		0 0 0 0 0 0 0	
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
board3: .word   1 1 0 0 0 0 0
		0 0 0 0 0 0 0	
		0 0 0 0 0 0 0	
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0	
board4: .word   1 1 0 0 0 0 0
		0 0 3 0 0 0 0	
		0 0 0 0 4 0 0	
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0
		0 0 0 0 0 0 0		
Input:	.space	8
one: .asciiz "1"
zero: .asciiz "0"
numtwo: .asciiz "2"
numthree: .asciiz "3"
numfour: .asciiz "4"
numfive: .asciiz "5"
numsix: .asciiz "6"
InputPlay:	.space	3
play1play: .asciiz "PLayer 1 plays "
 play2play: .asciiz "PLayer 2 plays "
temp: .space 2
tempdis: .asciiz "\nPress any key to countinue!"
tempdis2: .asciiz "\nPress any key to return to menu!"
move1:	.asciiz "\nPlayer 1, please enter a move (Ex: 00): "
move2:	.asciiz "\nPlayer 2, please enter a move (Ex: 00): "
invalidlength:	.asciiz "\nInvalid length of ship. Please enter again!"
outofbound:	.asciiz "\nInput is out of bound. Please enter again!"
overlap:	.asciiz "\nShip overlapped. Please enter again!"
diagonal:	.asciiz "\nShip cannot be diagonal. Please enter again!"
II:	.asciiz "\nInvalid input. Please enter again!"
startE:	.asciiz "\nPlease enter index 1-3!"
playagain: .asciiz "\nYou already guessed that space! Try again."
space:	.asciiz " "
newline:.asciiz "\n"
newpage: .asciiz "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
first:	.asciiz	"\n                                         @ 0 1 2 3 4 5 6\n"
firstwrite:	.asciiz	"\n   @ 0 1 2 3 4 5 6\n"
tab: .asciiz"                                        "
dash:	.asciiz	"                                         .--------------\n"
dashwrite:	.asciiz	" .--------------\n"
downline: .asciiz	"| "
playboard1: .asciiz "\n                                     ~[ PLAYER 1'S BOARD ]~                        "
playboard2: .asciiz "\n                                     ~[ PLAYER 2'S BOARD ]~                        "
place1:	.asciiz "\nPlease place a 2x1 ship (Ex:0 0 1 0): "
place2:	.asciiz "\nPlease place a 3x1 ship (Ex:0 0 2 0): "
place3:	.asciiz "\nPlease place a 4x1 ship (Ex:0 0 3 0): "
Win1:	.asciiz "Player 1 Wins!!!"
Win2:	.asciiz "Player 2 Wins!!!"
Miss:.asciiz "."
Hit:	.asciiz "X"
HitDis: .asciiz "HIT!"
MissDis: .asciiz "MISS!"
gamestart: .asciiz "Game Start!!!"
start: 		.asciiz "\n=======================================[  INITIALIZING!  ]=========================================\n"
play1:	        .asciiz "                             ~~ !!!PLAYER 1, PLACE YOUR SHIP!!! ~~\n\n"
play2:	        .asciiz "                             ~~ !!!PLAYER 2, PLACE YOUR SHIP!!! ~~\n\n"
play1turn: 		.asciiz "=======================================[ PLAYER 1's TURN ]=========================================\n"
play2turn:		.asciiz "=======================================[ PLAYER 2's TURN ]=========================================\n"
opponent: 		.asciiz "                                     ~[ OPPONENT'S BOARD ]~                        "
	.text 
main:
	li $v0,13
	la $a0,text
	li $a1,1
	li $a2,0
	syscall
	move $s6,$v0
	li $s4,0
	li	$v0, 4		
	la	$a0, newpage	
	syscall
	li	$v0, 4		
	la	$a0, subm	
	syscall
	li	$v0, 4		
	la	$a0, wlcm	
	syscall
	li	$v0, 4		
	la	$a0, startmenu	
	syscall
	li	$v0, 4		
	la	$a0, go	
	syscall
	li	$v0, 4		
	la	$a0, guide	
	syscall
	li	$v0, 4		
	la	$a0, outgame	
	syscall
	li	$v0, 4		
	la	$a0, menu_choice
	syscall
	li	$v0, 4		
	la	$a0,IIII
	syscall
	li $v0,8
	la $a0,temp
	la $a1,2
	syscall
	lb $a0,0($a0)
	addi $a0,$a0,-48
	bgt $a0,3,SE
	blt $a0,1,SE
	j nostarterror
	SE:
	jal starterror
	j main
	nostarterror:
	beq $a0,3,exit
	beq $a0,2,guidpage
	li	$v0, 4		
	la	$a0, newpage	
	syscall
	jal setboard
play:
	li $v0,4
	la $a0,newpage
	syscall
	li $v0, 59		
	la $a0, gamestart
	la $a1, newline	
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,15
	la $a1,gamestart
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,newline
	syscall
turn1:
	li $v0,4
	la $a0,newpage
	syscall
	li	$v0, 4		
	la	$a0, shootship	
	syscall
	li $v0,4
	la $a0,play1turn
	syscall
	li $s0,2
	li $v0,4
	la $a0,opponent
	syscall
	jal printplayboard
	li	$v0, 4		
	la	$a0, move1	
	syscall	
	la $a0,InputPlay
	li $a1,3
	li $v0,8
	syscall
	lb $t0,0($a0)
	lb $t1,1($a0)
	addi $t0,$t0,-48
	addi $t1,$t1,-48
	bgt $t0,9,playerror
	bgt $t1,9,playerror
	blt $t0,0,playerror
	blt $t1,0,playerror
	bgt $t0,6,playbound
	bgt $t1,6,playbound
	la $s1,board2
	li $v0,15
	move $a0,$s6
	li $a2,16
	la $a1,play1play
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,InputPlay
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,newline
	syscall
	mul $s0,$t0,7
	add $s0,$s0,$t1
	li $t0,0
get_to_index:
	beq $t0,$s0,end_index
	addi $t0,$t0,1
	addi $s1,$s1,4
	j get_to_index
end_index:
	lw $t1,0($s1)
	beqz $t1,miss 
	beq $t1,1,hit
	li $v0, 59		
	la $a0, playagain
	la $a1, newline	
	syscall
	j turn1
hit:
	
	li $t1,3
	sw $t1,0($s1)
	li $v0, 55
	la $a0, HitDis
	li $a1, 1
	syscall
	jal check1Win
	beq $s4,1,exit
	j turn2
miss:	
	
	li $t1,4
	sw $t1,0($s1)
	li $v0, 55
	la $a0, MissDis
	li $a1, 1
	syscall
	j turn2
	
turn2:
	li $v0,4
	la $a0,newpage
	syscall
	li	$v0, 4		
	la	$a0, shootship	
	syscall
	li $v0,4
	la $a0,play2turn
	syscall
	li $s0,1
	li $v0,4
	la $a0,opponent
	syscall
	jal printplayboard
	li	$v0, 4		
	la	$a0, move2	
	syscall	
	la $a0,InputPlay
	li $a1,3
	li $v0,8
	syscall
	lb $t0,0($a0)
	lb $t1,1($a0)
	addi $t0,$t0,-48
	addi $t1,$t1,-48
	bgt $t0,9,playerror2
	bgt $t1,9,playerror2
	blt $t0,0,playerror2
	blt $t1,0,playerror2
	bgt $t0,6,playbound2
	bgt $t1,6,playbound2
	la $s1,board1
	li $v0,15
	move $a0,$s6
	li $a2,16
	la $a1,play2play
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,InputPlay
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,newline
	syscall
	mul $s0,$t0,7
	add $s0,$s0,$t1
	li $t0,0
get_to_index2:
	beq $t0,$s0,end_index2
	addi $t0,$t0,1
	addi $s1,$s1,4
	j get_to_index2
end_index2:
	lw $t1,0($s1)
	beqz $t1,miss2
	beq $t1,1,hit2
	li $v0, 59		
	la $a0, playagain
	la $a1, newline	
	syscall
	j turn2
hit2:
	
	li $t1,3
	sw $t1,0($s1)
	li $v0, 55
	la $a0, HitDis
	li $a1, 1
	syscall
	jal check2Win
	beq $s4,1,exit
	j turn1
miss2:	
	
	li $t1,4
	sw $t1,0($s1)
	li $v0, 55
	la $a0, MissDis
	li $a1, 1
	syscall
	j turn1
exit:
	li $v0,16
	move $a0,$s6
	syscall
	li	$v0, 4		
	la	$a0, endofgame	
	syscall
	li $v0,10
	syscall
playerror:
	jal InvalidInput
	j turn1
playbound:
	jal Inputoutofbound
	j turn1
playerror2:
	jal InvalidInput
	j turn2
playbound2:
	jal Inputoutofbound
	j turn2
check1Win:
	la $s2,board2
	la $t8,0
checkwin:
	beq $t8,49,win
	lw $t7,0($s2)
	beq $t7,1,lose
	addi $t8,$t8,1
	addi $s2,$s2,4
	j checkwin
win:
	li $v0, 55
	la $a0, Win1
	li $a1, 1
	syscall
	li $s4,1
lose:
	jr $ra
check2Win:
	la $s2,board1
	la $t8,0
checkwin2:
	beq $t8,49,win2
	lw $t7,0($s2)
	beq $t7,1,lose
	addi $t8,$t8,1
	addi $s2,$s2,4
	j checkwin2
win2:
	li $v0, 55
	la $a0, Win2
	li $a1, 1
	syscall
	li $s4,1
lose2:
	jr $ra
	
# s0:Chooseboard	
setboard:
	addi $sp, $sp, -4	
	sw $ra, 0($sp)	
set1:   
	li $s0,1
	jal b2x1
	jal b3x1  
	jal b4x1
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, playboard1	
	syscall
	li $s0,1  
	jal  printboard
	li $v0,15
	move $a0,$s6
	li $a2,19
	la $a1,writeP1
	syscall
	jal writeboard
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,newline
	syscall	
	li $v0,4
	la $a0,tempdis
	syscall
	li $v0,8
	la $a0,temp
	la $a1,1
	syscall
	li $v0,4
	la $a0,newpage
	syscall
set2:
	li $s0,2   
	jal b2x1
	jal b3x1  
	jal b4x1
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, playboard2	
	syscall
	li $s0,2  
	jal  printboard
	li $v0,15
	move $a0,$s6
	li $a2,19
	la $a1,writeP2
	syscall
	jal writeboard
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,newline
	syscall	
	li $v0,4
	la $a0,tempdis
	syscall
	li $v0,8
	la $a0,temp
	la $a1,1
	syscall
	lw   $ra, 0($sp)
	addi $sp, $sp, 4  
	jr $ra		
				
#placeShips t4=numShip, s1:board1, s2,s3,s4,s5:input->s2,s3:index, $a2=row or col					
b2x1:
	addi $sp, $sp, -4	
	sw $ra, 0($sp)	
        li $t4,3
inputship2x1:
	li $t9,0
	beqz $t4,endI1
	beq $s0,2,player_2_1
	li	$v0, 4		
	la	$a0, smallship	
	syscall
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, play1	
	syscall
	li $v0, 4		
	la $a0, playboard1	
	syscall
	j board_1
	player_2_1:
	li	$v0, 4		
	la	$a0, smallship	
	syscall
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, play2	
	syscall
	li $v0, 4		
	la $a0, playboard2	
	syscall
	board_1:
	jal  printboard
	li $v0, 4		
	la $a0, place1	
	syscall	
	la $a0,Input
	li $a1,8
	li $v0,8
	syscall
	li $a1,0
checkInput:
	beq $a1,7,endcheck
	lb $t5,0($a0)
	rem $t6,$a1,2
	beq $t6,1,checkspace
	addi $t5,$t5,-48
	bgt $t5,6,printerror
	blt $t5,0,printerror
	beq $a1,2,two
	beq $a1,4,three
	beq $a1,6,four
	move $s2,$t5
	j non_error
	two:
	move $s3,$t5
	j non_error
	three:
	move $s4,$t5
	j non_error
	four:
	move $s5,$t5
	j non_error
checkspace:
	beq $t5,32,non_error
	jal InvalidInput
	j inputship2x1
printerror:
	beq $t5,7,bound
	beq $t5,8,bound
	beq $t5,9,bound
	jal InvalidInput
	j inputship2x1
bound:
	jal Inputoutofbound
	j inputship2x1
non_error:
	addi $a1,$a1,1
	addi $a0,$a0,1
	j checkInput

endcheck:
	beq $s2,$s4,samerow
	beq $s3,$s5,samecol
	jal Printdiagonal
	j inputship2x1
samerow:
	li $a2,1
	mul $s2,$s2,7
	add $s2,$s2,$s3
	mul $s3,$s4,7
	add $s3,$s3,$s5
	bgt $s3,$s2,nr_reverse
	move $v1,$s3
	move $s3, $s2
	move $s2,$v1
nr_reverse:
	sub $s4,$s3,$s2
	addi $s3,$s3,1
	beq $s4,1,end_input
	jal invalidL
	j inputship2x1
samecol:
	li $a2,2	
	mul $s2,$s2,7
	add $s2,$s2,$s3
	mul $s3,$s4,7
	add $s3,$s3,$s5
	bgt $s3,$s2,nc_reverse
	move $v1,$s3
	move $s3, $s2
	move $s2,$v1
nc_reverse:
	sub $s4,$s3,$s2
	addi $s3,$s3,7
	beq $s4,7,end_input
	jal invalidL
	j inputship2x1	
end_input:
	move $s7,$a2 
	li $v0,15
	move $a0,$s6
	li $a2,16
	beq $s0,2,printtext2
	la $a1,play1play
	j call
	printtext2:
	la $a1,play2play
	call:
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,8
	la $a1,Input
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,newline
	syscall
	move $a2,$s7
	jal changeboard
	beq $t9,1,inputship2x1
	li $v0,4
	la $a0,newpage
	syscall
	addi $t4,$t4,-1
	j inputship2x1
endI1:
	lw   $ra, 0($sp)
	addi $sp, $sp, 4  
	jr $ra
	
	
#placeShips t4=numShip, s1:board1, s2,s3,s4,s5:input->s2,s3:index, $a2=row or col		
b3x1:
addi $sp, $sp, -4	
	sw $ra, 0($sp)	
        li $t4,2
inputship3x1:
	li $t9,0
	beqz $t4,endI2
	beq $s0,2,player_2_2
	li	$v0, 4		
	la	$a0, bigship	
	syscall
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, play1	
	syscall
	li $v0, 4		
	la $a0, playboard1	
	syscall
	j board_2
	player_2_2:
	li	$v0, 4		
	la	$a0, bigship	
	syscall
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, play2	
	syscall
	li $v0, 4		
	la $a0, playboard2	
	syscall
	board_2:
	jal  printboard
	li $v0, 4		
	la $a0, place2	
	syscall	
	la $a0,Input
	li $a1,8
	li $v0,8
	syscall
	li $a1,0
checkInput2:
	beq $a1,7,endcheck2
	lb $t5,0($a0)
	rem $t6,$a1,2
	beq $t6,1,checkspace2
	addi $t5,$t5,-48
	bgt $t5,6,printerror2
	blt $t5,0,printerror2
	beq $a1,2,two2
	beq $a1,4,three2
	beq $a1,6,four2
	move $s2,$t5
	j non_error2
	two2:
	move $s3,$t5
	j non_error2
	three2:
	move $s4,$t5
	j non_error2
	four2:
	move $s5,$t5
	j non_error2
checkspace2:
	beq $t5,32,non_error2
	jal InvalidInput
	j inputship3x1
printerror2:
	beq $t5,7,bound2
	beq $t5,8,bound2
	beq $t5,9,bound2
	jal InvalidInput
	j inputship3x1
bound2:
	jal Inputoutofbound
	j inputship3x1
non_error2:
	addi $a1,$a1,1
	addi $a0,$a0,1
	j checkInput2

endcheck2:
	beq $s2,$s4,samerow2
	beq $s3,$s5,samecol2
	jal Printdiagonal
	j inputship3x1
samerow2:
	li $a2,1
	mul $s2,$s2,7
	add $s2,$s2,$s3
	mul $s3,$s4,7
	add $s3,$s3,$s5
	bgt $s3,$s2,nr_reverse2
	move $v1,$s3
	move $s3, $s2
	move $s2,$v1
nr_reverse2:
	sub $s4,$s3,$s2
	addi $s3,$s3,1
	beq $s4,2,end_input2
	jal invalidL
	j inputship3x1
samecol2:
	li $a2,2	
	mul $s2,$s2,7
	add $s2,$s2,$s3
	mul $s3,$s4,7
	add $s3,$s3,$s5
	bgt $s3,$s2,nc_reverse2
	move $v1,$s3
	move $s3, $s2
	move $s2,$v1
nc_reverse2:
	sub $s4,$s3,$s2
	addi $s3,$s3,7
	beq $s4,14,end_input2
	jal invalidL
	j inputship3x1	
end_input2:
	move $s7,$a2 
	li $v0,15
	move $a0,$s6
	li $a2,16
	beq $s0,2,printtext22
	la $a1,play1play
	j call2
	printtext22:
	la $a1,play2play
	call2:
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,8
	la $a1,Input
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,newline
	syscall
	move $a2,$s7
	jal changeboard
	beq $t9,1,inputship3x1
	li $v0,4
	la $a0,newpage
	syscall
	addi $t4,$t4,-1
	j inputship3x1
endI2:
	lw   $ra, 0($sp)
	addi $sp, $sp, 4  
	jr $ra
	
b4x1:		
addi $sp, $sp, -4	
	sw $ra, 0($sp)	
        li $t4,1
inputship4x1:
	li	$v0, 4		
	la	$a0, subm	
	syscall
	li $t9,0
	beqz $t4,endI3
	beq $s0,2,player_2
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, play1	
	syscall
	li $v0, 4		
	la $a0, playboard1	
	syscall
	j board_3
	player_2:
	li $v0,4
	la $a0,start
	syscall
	li $v0, 4		
	la $a0, play2	
	syscall
	li $v0, 4		
	la $a0, playboard2	
	syscall
	board_3:
	jal  printboard
	li $v0, 4		
	la $a0, place3	
	syscall	
	la $a0,Input
	li $a1,8
	li $v0,8
	syscall
	li $a1,0
checkInput3:
	beq $a1,7,endcheck3
	lb $t5,0($a0)
	rem $t6,$a1,2
	beq $t6,1,checkspace3
	addi $t5,$t5,-48
	bgt $t5,6,printerror3
	blt $t5,0,printerror3
	beq $a1,2,two3
	beq $a1,4,three3
	beq $a1,6,four3
	move $s2,$t5
	j non_error3
	two3:
	move $s3,$t5
	j non_error3
	three3:
	move $s4,$t5
	j non_error3
	four3:
	move $s5,$t5
	j non_error3
checkspace3:
	beq $t5,32,non_error3
	jal InvalidInput
	j inputship4x1
printerror3:
	beq $t5,7,bound3
	beq $t5,8,bound3
	beq $t5,9,bound3
	jal InvalidInput
	j inputship4x1
bound3:
	jal Inputoutofbound
	j inputship4x1
non_error3:
	addi $a1,$a1,1
	addi $a0,$a0,1
	j checkInput3

endcheck3:
	beq $s2,$s4,samerow3
	beq $s3,$s5,samecol3
	jal Printdiagonal
	j inputship4x1
samerow3:
	li $a2,1
	mul $s2,$s2,7
	add $s2,$s2,$s3
	mul $s3,$s4,7
	add $s3,$s3,$s5
	bgt $s3,$s2,nr_reverse3
	move $v1,$s3
	move $s3, $s2
	move $s2,$v1
nr_reverse3:
	sub $s4,$s3,$s2
	addi $s3,$s3,1
	beq $s4,3,end_input3
	jal invalidL
	j inputship4x1
samecol3:
	li $a2,2	
	mul $s2,$s2,7
	add $s2,$s2,$s3
	mul $s3,$s4,7
	add $s3,$s3,$s5
	bgt $s3,$s2,nc_reverse3
	move $v1,$s3
	move $s3, $s2
	move $s2,$v1
nc_reverse3:
	sub $s4,$s3,$s2
	addi $s3,$s3,7
	beq $s4,21,end_input3
	jal invalidL
	j inputship4x1	
end_input3:
move $s7,$a2 
	li $v0,15
	move $a0,$s6
	li $a2,16
	beq $s0,2,printtext23
	la $a1,play1play
	j call3
	printtext23:
	la $a1,play2play
	call3:
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,8
	la $a1,Input
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,3
	la $a1,newline
	syscall
	move $a2,$s7
	jal changeboard
	beq $t9,1,inputship4x1
	li $v0,4
	la $a0,newpage
	syscall
	addi $t4,$t4,-1
	j inputship4x1
endI3:
	lw   $ra, 0($sp)
	addi $sp, $sp, 4  
	jr $ra			
# s0:origin board->t0:board, t1:column, t2:row							
printboard:
	beq $s0,2,printboard2
	beq $s0,3 printboard3								
	la $t0, board1
	j afterprint
	printboard2:
	la $t0, board2
	j afterprint
	printboard3:
	la $t0, board3
	afterprint:
	li $t1,0
	li $v0, 4		
	la $a0, first	
	syscall
	li $v0, 4		
	la $a0, dash	
	syscall	
while:
	beq $t1,7,endwhile
	li $v0, 4		
	la $a0, tab	
	syscall
	li $v0,1
	move $a0,$t1
	syscall
	li $v0, 4		
	la $a0, downline	
	syscall
	li $t2,0
	in_while:
		beq $t2,7,endInwhile
		lw $t3,0($t0)
		beq $t3,1,print1
		beq $t3,3,printhit
		beq $t3,4,printmiss
		beqz $t3,print0
		printhit:
		li $a0,4
		la $a0,Hit
		syscall
		j next
		printmiss:
		li $a0,4
		la $a0,Miss
		syscall
		j next
		print1:
		li $a0,1
		li $v0,1
		syscall
		j next
		print0:
		li $a0,0
		li $v0,1
		syscall
		next:
		li $v0, 4		
	        la $a0, space	
		syscall	
		addi $t2,$t2,1
		addi $t0,$t0,4
		j in_while							
	endInwhile:
	addi $t1,$t1,1
	li $v0, 4		
	la $a0, newline	
	syscall		
	j while													
endwhile:
	jr $ra		
	
#changeboard
changeboard:
	addi $sp, $sp, -4	
	sw $ra, 0($sp)	
	beq $s0,2,inputchoice2
	la $s1, board1	# load player 1's board into $s1
	j nextI
inputchoice2:	
	la	$s1, board2	# load player 2's board into $s1
nextI:		
	li $t0,0
get_to:
	beq $t0,$s2,end_get
	addi $s1,$s1,4
	addi $t0,$t0,1
	j get_to	
end_get:
	addi $t1,$t0,0
	addi $t2,$s1,0
	check_overlap:
	beq $t1,$s3,end_lap
	lw $t3,0($t2)
	bne $t3,1,next_lap
	jal Inputoverlap
	li $t9,1
	lw   $ra, 0($sp)
	addi $sp, $sp, 4  
	jr $ra		
next_lap:
	beq $a2,2,col
	addi $t2,$t2,4
	addi $t1,$t1,1
	j check_overlap
col:
	addi $t2,$t2,28
	addi $t1,$t1,7
	j check_overlap
end_lap:
	beq $t0,$s3,end_change
	li $t3,1
	sw $t3,0($s1)
	beq $a2,2,col_change
	addi $s1,$s1,4
	addi $t0,$t0,1
	j end_lap
col_change:
	addi $s1,$s1,28
	addi $t0,$t0,7
	j end_lap
end_change:
	lw   $ra, 0($sp)
	addi $sp, $sp, 4  
	jr $ra
	
																																			
# playboard
printplayboard:
	beq $s0,2,printplayboard2	
	beq $s0,3,printplayboard3							
	la $t0, board1
	j afterprint2
	printplayboard2:
	la $t0, board2
	j afterprint2
	printplayboard3:
	la $t0, board4
	afterprint2:
	li $t1,0
	li $v0, 4		
	la $a0, first	
	syscall
	li $v0, 4		
	la $a0, dash	
	syscall	
whileplay:
	beq $t1,7,endwhileplay
	li $v0, 4		
	la $a0, tab	
	syscall
	li $v0,1
	move $a0,$t1
	syscall
	li $v0, 4		
	la $a0, downline	
	syscall
	li $t2,0
	in_whileplay:
		beq $t2,7,endInwhileplay
		lw $t3,0($t0)
		beq $t3,1,printmissplay
		beq $t3,3,printhitplay
		beq $t3,4,print0play
		beqz $t3,printmissplay
		printhitplay:
		li $a0,4
		la $a0,Hit
		syscall
		j nextplay
		printmissplay:
		li $a0,4
		la $a0,Miss
		syscall
		j nextplay
		print1play:
		li $a0,1
		li $v0,1
		syscall
		j nextplay
		print0play:
		li $a0,0
		li $v0,1
		syscall
		nextplay:
		li $v0, 4		
	        la $a0, space	
		syscall	
		addi $t2,$t2,1
		addi $t0,$t0,4
		j in_whileplay							
	endInwhileplay:
	addi $t1,$t1,1
	li $v0, 4		
	la $a0, newline	
	syscall		
	j whileplay													
endwhileplay:
	jr $ra	
guidpage:
	li	$v0, 4		
	la	$a0, newpage	
	syscall
	li	$v0, 4		
	la	$a0, guidemenu	
	syscall
	li	$v0, 4		
	la	$a0, guide_sen	
	syscall
	li $s0,1  
	jal  printboard
	li	$v0, 4		
	la	$a0, guide_sen2	
	syscall
	li $s0,3  
	jal  printboard
	li $v0,4
	la $a0,tempdis
	syscall
	li $v0,8
	la $a0,temp
	la $a1,1
	syscall
	li	$v0, 4		
	la	$a0, newpage	
	syscall
	li	$v0, 4		
	la	$a0, guidemenu	
	syscall
	li	$v0, 4		
	la	$a0, guide_sen3	
	syscall
	li	$v0, 4		
	la	$a0, opponent	
	syscall
	li $s0,3  
	jal  printplayboard
	li	$v0, 4		
	la	$a0, guide_sen4
	syscall
	li $v0,4
	la $a0,tempdis2
	syscall
	li $v0,8
	la $a0,temp
	la $a1,1
	syscall
	j main																																																																																																																																																																																																																
#error	
starterror:
	li $v0, 55
	la $a0, startE
	li $a1, 0
	syscall
	jr $ra																													
invalidL:
	li $v0, 55
	la $a0, invalidlength
	li $a1, 0
	syscall
	li $v0,4
	la $a0,newpage
	syscall
	jr $ra
Inputoutofbound:
        li $v0, 55
	la $a0, outofbound
	li $a1, 0
	syscall
	li $v0,4
	la $a0,newpage
	syscall
	jr $ra
Inputoverlap:
        li $v0, 55
	la $a0, overlap
	li $a1, 0
	syscall
	li $v0,4
	la $a0,newpage
	syscall
	jr $ra
InvalidInput:
        li $v0, 55
	la $a0, II
	li $a1, 0
	syscall
	li $v0,4
	la $a0,newpage
	syscall
	jr $ra	
Printdiagonal:
	li $v0, 55
	la $a0, diagonal
	li $a1, 0
	syscall
	li $v0,4
	la $a0,newpage
	syscall
	jr $ra			





writeboard:
	beq $s0,2,writeboard2
	beq $s0,3 writeboard3								
	la $t0, board1
	j writeprint
	writeboard2:
	la $t0, board2
	j writeprint
	writeboard3:
	la $t0, board3
	writeprint:
	li $t1,0
	li $v0,15
	move $a0,$s6
	li $a2,22
	la $a1,firstwrite
	syscall
	li $v0,15
	move $a0,$s6
	li $a2,18
	la $a1,dashwrite
	syscall
whilewrite:
	beq $t1,7,endwhilewrite
	beq $t1,1,num1
	beq $t1,2,num2
	beq $t1,3,num3
	beq $t1,4,num4
	beq $t1,5,num5
	beq $t1,6,num6
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,zero
	syscall
	j ahhhh
	num1:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,one
	syscall
	j ahhhh
	num2:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,numtwo
	syscall
	j ahhhh
	num3:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,numthree
	syscall
	j ahhhh
	num4:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,numfour
	syscall
	j ahhhh
	num5:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,numfive
	syscall
	j ahhhh
	num6:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,numsix
	syscall
	ahhhh:
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,downline
	syscall
	li $t2,0
	in_whilewrite:
		beq $t2,7,endInwhilewrite
		lw $t3,0($t0)
		beq $t3,1,print1write
		beq $t3,3,printhitwrite
		beq $t3,4,printmisswrite
		beqz $t3,print0write
		printhitwrite:
		li $v0,15
		move $a0,$s6
		li $a2,2
		la $a1,Hit
		syscall
		j nextwrite
		printmisswrite:
		li $v0,15
		move $a0,$s6
		li $a2,2
		la $a1,Miss
		syscall
		j nextwrite
		print1write:
		li $v0,15
		move $a0,$s6
		li $a2,1
		la $a1,one
		syscall
		j nextwrite
		print0write:
		li $v0,15
		move $a0,$s6
		li $a2,1
		la $a1,zero
		syscall
		nextwrite:
		li $v0,15
		move $a0,$s6
		li $a2,1
		la $a1,space
		syscall
		addi $t2,$t2,1
		addi $t0,$t0,4
		j in_whilewrite							
	endInwhilewrite:
	addi $t1,$t1,1
	li $v0,15
	move $a0,$s6
	li $a2,2
	la $a1,newline
	syscall	
	j whilewrite													
endwhilewrite:
	jr $ra		
	
