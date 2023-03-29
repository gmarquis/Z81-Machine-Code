org 40000						
ld a,2						
call 5633						
						
MAIN						
LD HL, COUNTER						
LD BC, 1						
LD B, 255						
LOOP						
PUSH BC						
INC (HL)						
LD DE,string						
LD BC,strend-string			; characters long	
CALL 8252				; print string	

LD BC,(COUNTER)						
CALL 6683				; print num	

LD DE,mov
LD BC,movend-mov
CALL 8252

LD DE,mov1
LD BC,mov1end-mov1
CALL 8252

POP BC						
DJNZ LOOP				; B to 0	
						
RET						
COUNTER: dw 0						
						
string:  defb 22,6,0,16,0,17,7,18,0					
defb "HELLO THERE!!",18,0,13						
strend:

mov:  defb 22,12,7,16,0,17,7,18,1
defb "LOWER DOWN!!",18,0,13
movend:

mov1:  defb 22,18,18,16,0,17,7,18,0
defb "Again !!",18,0,13
mov1end:
