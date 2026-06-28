# Mohammed Uddin
# CSCI 26000 - HW7: Celsius to Fahrenheit
# s0 = base of temperature array A (Celsius), s1 = length n.
# Convert each reading to Fahrenheit in place: F = 2*C + 32.

# AI use:      none
# Worked with: none

# Note: The exact formula is F = (9/5)*C + 32, but because we do not have a
# division instruction in the class, we approximate it with F = 2*C + 32.

.data
A: .word 0, 20, 100, -5

.text
main:
 la s0, A # base of A (local-test setup)
 li s1, 4 # n (local-test setup)

# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE

addi t0, x0, 0          # i = 0; t0 (destination register) = x0 (in-built 0) + 0

loop:
beq t0, s1, done        # if i == n, exit loop

slli t1, t0, 2          # byte offset = i * 4
add t2, s0, t1          # address of A[i]

lw t3, 0(t2)            # load Celsius value

slli t4, t3, 1          # t4 = 2 * Celsius
addi t4, t4, 32         # Fahrenheit = 2*C + 32

sw t4, 0(t2)            # store result back into array

addi t0, t0, 1          # i++
jal x0, loop            # repeat

done:

# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
