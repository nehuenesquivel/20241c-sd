main:
    addi a0 x0 lenght
    lw a1 0(a0)   
    addi a2 x0 array
    lw a3 0(a2) 
    
for:
    beq a1 x0 end
    addi a2 a2 4
    lw a4 0(a2)
    ble a4 a3 decrement
    addi a3 a4 0  
          
decrement:
    addi a1 a1 -1
    j for

end:

testing:
    lenght: .word 0x8
    array: .word 0x3 0x1 0x4 0x1 0x5 0x9 0x2 0x6
    

#precondition -> lenght > 0
#max = array[0]
#if lenght > 1:
#    for element in array[1:]:
#        if element > max:
#            max = element
#return max