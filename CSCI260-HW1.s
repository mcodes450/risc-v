# Mohammed Uddin
# CSCI 26000 - HW1: 2a + b
# Register t0 holds a, t1 holds b. Compute 2a + b and put it in t2.
# Use only `add`. See the assignment description for examples.
#
# AI use:      none
# Worked with: none

.text
main:
    addi t0, x0, 3       # placeholder: t0 = a
    addi t1, x0, 4       # placeholder: t1 = b

# DONOTMODIFYTHISLINE

    add t2, t0, t0   # Add a to itself to compute 2a; a + a = 2a -- store it in t2
    add t2, t2, t1   # Add b (or t1) to the intermediate result (t2), yielding 2a + b
    
# DONOTMODIFYTHISLINE
