main:
    addi a0 zero length
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
    length: .word 0x8
    array: .word 0x3 0x1 0x4 0x1 0x5 0x9 0x2 0x6

#precondition: length >= 1
#max = array[0]
#if length > 1:
#    while(length > 1):
#        length--
#        element = array[length]
#        if element > max:
#            max = element
#return max