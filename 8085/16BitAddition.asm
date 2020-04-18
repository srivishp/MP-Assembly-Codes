// ADDITION OF TWO 16BIT NUMBERS SUM 16 BITS OR MORE
// Manually strore 1st 16 bit no in the memory location C050 & C051 in reverse order
// Manually store 2nd 16 bit no in the memory location C052 & C053 in reverse order
// Result is stored in C053, C054 & C055 in reverse order
	   LHLD 2050
	   XCHG
	   LHLD 2052
	   MVI C,00
	   DAD D
	   JNC LOOP
	   INR C

LOOP:	   SHLD 2060
	   MOV A,C
	   STA 2062
	   JZ LOOP
	   HLT
// EXAMPLE-> A645+9B23=014168
// STORE-> 2050=45,2051=A6,2052=23,2053=9B
// Answer-> 20560=68,2061=41,2062=01
# ORG 2050
# DB 45H,A6H,23H,9BH
