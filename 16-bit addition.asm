#MASM program for 16 bit addition

ASSUME CS:CODE,dS:DATA

DATA SEGMENT
  NUM1 DW 0001H
  NUM2 DW 0002H
  SUM DW ?
DATA ENDS

CODE SEGMENT:
START:
  MOV AX,DATA
  MOV DS,AX
  
  MOV AX,NUM1
  ADD AX,NUM2
  MOV SUM,AX
  
  ADD SUM,"00"
  MOV DX,SUM
  MOV AH,02H
  INT 21H

STOP:
  MOV AH,4CH
  INT 21H

CODE ENDS
END START