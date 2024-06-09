main:
    addi t0 zero n
    lw t0 0(t0)
    addi a1 zero 2
    addi a2 zero -1
    sw a2 0(sp)

fibonacci:
    blt t0 a1 base
    addi t0 t0 -1
    addi sp sp -16
    sw t0 0(sp)
    addi t0 t0 -1
    j fibonacci

base:
    add a0 a0 t0
    lw t0 0(sp)
    beq t0 a2 end
    addi sp sp 16
    j fibonacci

end:

testing:
    n: .word 0x5

#def fibonacci(n):
#    if n < 2:
#        r = n
#    else:
#        r = fibonacci(n - 1) + fibonacci(n - 2)
#    return r