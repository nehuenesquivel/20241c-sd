main:
    addi a0 zero s
    addi a1 zero q
    addi a2 zero l
    lw a2 0(a2)
    addi a3 zero 2

for:
    beq a2 zero end
    lw t0 0(a1)
    rem t1 t0 a3
    beq t1 zero update
    addi t0 zero 0
    
update:
    sw t0 0(a0)    
    addi a0 a0 4
    addi a1 a1 4
    addi a2 a2 -1
    j for
 
end:

testing:
    s: .word 0x3 0x1 0x4 0x9 0x5
    q: .word 0x2 0x6 0x8 0x5 0x3
    l: .word 0x5

#precondition: l >= 0
#while (l > 0):
#    l--
#    e = q[l]
#    r = e % 2
#    if r != 0:
#        e = 0
#    s[l] = e