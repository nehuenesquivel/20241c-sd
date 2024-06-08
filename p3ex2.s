main:
    addi a0 zero s
    addi a1 zero q
    addi a2 zero lenght
    lw a2 0(a2)

for:
    beq a2 zero end
    lw t0 0(a1)
    sw t0 0(a0)
    addi a1 a1 4
    addi a0 a0 4
    addi a2 a2 -1
    j for

end:

testing:
    s: .word 0x3 0x1 0x4 0x9 0x5
    q: .word 0x2 0x6 0x8 0x5 0x3
    lenght: .word 0x5

#precondition: lenght >= 0
#while(i > 0)
#    i--
#    s[i] = q[i]