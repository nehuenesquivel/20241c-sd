main:
    addi a0 zero lenght
    lw a0 0(a0)
    addi a1 zero array
    lw t0 0(a1)

for:
    addi a0 a0 -1
    beq a0 zero end
    addi a1 a1 4
    lw t1 0(a1)
    ble t1 t0 next
    addi t0 t1 0

next:
    j for

end:

testing:
    lenght: .word 0x8
    array: .word 0x3 0x1 0x4 0x1 0x5 0x9 0x2 0x6

#precondition: lenght >= 1
#max = array[0]
#if lenght > 1:
#    while(lenght > 1)
#        lenght--
#        element = array[lenght]
#        if element > max:
#            max = element
#return max