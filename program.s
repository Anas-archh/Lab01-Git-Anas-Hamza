.text
.globl main
main:
    li x20, 5   # a = 5
    li x21, 0   # b = 0 + 0
    addi x20, x21, 32 # a = b + 32
    add x23, x20, x21 # a + b
    addi x24, x23, -5 # d = (a + b) - 5
    sub x26, x20, x24 # a - d
    sub x27, x21, x20 # b - a
    add x26, x26, x27 # (a - d) + (b - a)
    add x25, x25, x25 # e = (a + b) + d + e
    add x25, x26, x24 # e = (((a - d) + (b - a) + d)
    add x25, x23, x24 # e = (a + b) + d

    # a -> x20 should be 32 - 20
    # b -> x21 should be 0 - 00
    # d -> x24 should be 27 - 1B
    # e -> x25 should be 59 - 3B
end:
    j end
