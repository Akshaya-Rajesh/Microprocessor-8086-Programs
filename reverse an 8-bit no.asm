# MASM program to reverse an 8-bit number

ASSUME CD:CODE

CODE SEGMENT
START:
  MOV AX,DATA
  MOV DS,AX
  
  MOV AX,FEH
  MOV CX,04H
  
  REV:
    ROL AX,1
    DEC CX
    JNZ REV
  
STOP:
  MOV AH,4CH
  INT 21H

CODE ENDS
END START