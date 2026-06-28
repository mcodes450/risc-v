# Mohammed Uddin
# CSCI 26000 - HW6: Set and clear bits
# s0 = a number. Turn bit 8 on and bit 3 off, in s0. (Bit 0 is the lowest bit.)
# Allowed: and, or, andi, ori.
# Write your solution between the markers. Everything outside is for local testing.

# AI use:      none
# Worked with: none

.text
main:
 li s0, 200 # local-test value

# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE

# ------------------------------------------------------------
# ori stands for OR Immediate/Constant.
# Default Schema:    0000  0000  0000  0000 or 1111  1111  1111  1111
# Original s0 bits:  0000  0000  1100  1000 <-- 200
# The Mask (256):    0000  0001  0000  0000 <-- Only Bit 8 is a 1
# New s0 Result:     0000  0001  1100  1000 <-- 456 
ori s0, s0, 256     # Turn bit 8 on by OR-ing it with 2^8 (== 256)
# ------------------------------------------------------------

# ------------------------------------------------------------
# andi stands for AND Immediate/Constant.
# Default Schema:    1111  1111  1111  1111
# Original s0 bits:  0000  0001  1100  1000 <-- 456
# The Mask (-9):     1111  1111  1111  0111 <-- Bit 3 is 0, all other bits are 1
# New s0 Result:     0000  0001  1100  0000 <-- 448
andi s0, s0, -9      # Turn bit 3 off by AND-ing it with (-1 - 2^3), which is -9.
# ------------------------------------------------------------

# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
