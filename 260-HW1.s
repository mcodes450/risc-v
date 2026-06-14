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

  add t2, t0, t0   # Add a to itself to compute 2a
  add t2, t2, t1   # Add b to the intermediate result, yielding 2a + b

# DONOTMODIFYTHISLINE
