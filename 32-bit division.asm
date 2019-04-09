"MASM program for 32-bit division"

ASSUME CS:CODE,DS:DATA

DATA SEGMENT
  DIV1 DW 0008H
  DIV2 DW 0000H
  DIVISOR 0002H
  REM DW ?
  QUO DW ?
DATA ENDS

CODE SEGMENT
START:
  MOV AX,DATA
  MOV DS,AX
  
  MOV AX,DIV1
  MOV BX,DIVISOR
  MOV DX,DIV2
  DIV BX
  MOV QUO,AX
  MOV REM,DX

STOP:
  MOV AH,4CH
  INT 21H

CODE ENDS
END START
