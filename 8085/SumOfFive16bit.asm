# org 2000h
mvi a,00h
lhld 3000
xchg
lhld 3002
xchg
dad d
aci 00h
xchg
lhld 3004
dad d
aci 00h
xchg
lhld 3006
dad d
aci 00h
xchg
lhld 3008
dad d
aci 00h
shld 4000
sta 4002
hlt
# org 3000h
# db 0ff,0ff,0ff,0ff,0ff,0ff,0ff,0ff,0ff,0ff