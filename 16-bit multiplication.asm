#MASM program for 16-bit multiplication(using immediate addressing mode)

ASSUME CS:CODE

CODE SEGMENT
START:
  MOV AX,0011H
  MOV BX,0002H
  MUL BX
  
  ADD AX,"00"
  MOV DX,AX
  MOV AH,02H
  INT 21H
  
STOP:
  MOV AH,4CH
  INT 21H
CODE ENDS
END START
