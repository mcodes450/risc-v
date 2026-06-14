# Mohammed Uddin
# CSCI 26000 - HW2: Reach 10,005
# Starting from x0, build the value 10005 in register t0.
# Use only `addi`. Do not assume t0 already contains zero.
# See the assignment description.
#
# AI use:      none
# Worked with: none

.text
main:

# DONOTMODIFYTHISLINE

addi t0, x0, 2000   # initialize t0 to 2000
addi t0, t0, 2000   # t0 = 4000 (2000 + 2000)
addi t0, t0, 2000   # t0 = 6000 (4000 + 2000)
addi t0, t0, 2000   # t0 = 8000 (6000 + 2000)
addi t0, t0, 2000   # t0 = 10000 (8000 + 2000)
addi t0, t0, 5      # t0 = 10005 (final result)

# DONOTMODIFYTHISLINE
