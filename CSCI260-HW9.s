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
    la s0, msg # address of the string (local-test setup)
    li s1, 97 # target character 'a' (local-test setup)

# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE
# Count occurrences of character in null-terminated string
# s0 = string pointer
# s1 = target char
# s2 = result count

li s2, 0              # initialize count

loop:
    lb t0, 0(s0)      # load current character
    beq t0, x0, done  # stop at null terminator

    bne t0, s1, next  # if not match, skip increment
    addi s2, s2, 1    # increment if match

next:
    addi s0, s0, 1    # move to next char
    j loop

done:

# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
