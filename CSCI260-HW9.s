# Mohammed Uddin
# CSCI 26000 - HW9: Character Count
# s0 = address of a null-terminated string, s1 = a character (ASCII code).
# Put the number of times that character appears in the string in s2.
#
# AI use:      none
# Worked with: none

.data
msg: .asciz "banana"

.text
main:
    la s0, msg        # address of the string (local-test setup)
    li s1, 97         # target character 'a' (local-test setup)

# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE

# s2 = 0 using real instruction (no li pseudo)
addi s2, x0, 0        # initialize count = 0

loop:
    lb t0, 0(s0)      # load current character from string

    beq t0, x0, done  # if null terminator → exit loop

    bne t0, s1, next  # if not match → skip increment
    addi s2, s2, 1    # match found → increment counter

next:
    addi s0, s0, 1    # move pointer to next character
    jal x0, loop      # unconditional jump back (no pseudo j)

done:

# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
