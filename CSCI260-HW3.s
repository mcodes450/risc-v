# Mohammed Uddin
# CSCI 26000 - HW3: 3 - 7(9n + 5)
# Register t0 holds n. Compute 3 - 7(9n + 5) and put it in t1.
# Use only `add`, `addi`, `sub`. See the assignment description.
#
# AI use:      none
# Worked with: none

.text
main:
    addi t0, x0, 5       # placeholder: n = 5

# DONOTMODIFYTHISLINE

    # compute 9n using shift-style doubling
    add t1, t0, t0       # t1 = 2n
    add t1, t1, t1       # t1 = 4n
    add t1, t1, t1       # t1 = 8n
    add t1, t1, t0       # t1 = 9n

    addi t1, t1, 5       # t1 = 9n + 5

    # compute 7(9n + 5) using (8x - x)
    add t0, t1, x0       # copy x = (9n + 5)
    add t1, t0, t0       # t1 = 2x
    add t1, t1, t1       # t1 = 4x
    add t1, t1, t1       # t1 = 8x
    sub t1, t1, t0       # t1 = 8x - x = 7x

    # compute final expression: 3 - 7(9n + 5)
    addi t0, x0, 3       # t0 = 3
    sub t1, t0, t1       # t1 = 3 - 7(9n + 5)

# DONOTMODIFYTHISLINE
