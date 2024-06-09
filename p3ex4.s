main:
    addi a0 zero array
    addi a1 zero length
    lw a1 0(a1)
    addi a2 zero target
    lw a2 0(a2)
    addi a3 zero 2

for: 
    lw t0 0(a0)
    ble a2 a1 end
    beq a1 t0 end

end:






se pide devolver el ndice de array adonde se encuentra
 target, usando busqueda binaria.
 #BINARY SEARCH
 .data
 array: .word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19 # Sorted array
 target: .word 1
 length: .word 10
 
#precondition: length >= 1, target in array
#while (length > 0):
position = length / 2

#    length--
#    element = array[length]
#    if element == target:
#        return length