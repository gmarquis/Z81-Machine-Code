ORG 30000

first DEFB 125
second DEFB 121

LD A,(first)
LD HL,second
LD C,(HL)
OR A
CP C
JP C,SUB1  ; < red
JP SUB3    ; > blue
JP Z,SUB2  ; = green
RET

SUB2
LD A,4     ; = green
CALL ROM1
RET

SUB1
LD A,2     ; < red
CALL ROM1
RET

SUB3
LD A,1     ; > blue
CALL ROM1
RET

ROM1 EQU 8859
RET

