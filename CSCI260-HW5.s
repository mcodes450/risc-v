# Mohammed Uddin
# CSCI 26000 - HW5: Keep a value between 0 and 255
# s0 = address of a number. If below 0 store 0; if above 255 store 255; else leave it.
# Allowed: add, sub, addi, lw, sw, beq, bne, blt, bge, jal.
# Write your solution between the markers. Everything outside is for local testing.

# AI use:      none
# Worked with: none

# -----  Intuition  ------
# if number < 0:
#     number = 0
# elif number > 255:
#     number = 255
# -----  Intuition  ------

# Personal Note: s0 is an Address, Not a Number
    
.data
num: .word 300
.text
main:
 la s0, num # local-test setup
 
# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE

# ------------------------------------------------------------
lw t0, 0(s0)          # s0 contains the memory address. Load the value stored there into t0.
# ------------------------------------------------------------

# ------------------------------------------------------------
# IF it's negative (< 0) -> Teleport to force_0
blt t0, x0, force_0   # If t0 [value derived from "lw t0, 0(s0)"] < 0, branch to force_0.
# ------------------------------------------------------------

# ------------------------------------------------------------
# Since we can't use 'li', build 255 using addi.
addi t1, x0, 255      # t1 = 255; t1 = 0 + 255
# IF it's too big (> 255) -> Teleport to force_255 
blt t1, t0, force_255 # If 255 < t0, then t0 > 255, so branch to force_255.
# ------------------------------------------------------------

# ------------------------------------------------------------
# If neither branch was taken, the value is between 0 and 255.
# Skip the correction code and go directly to saving it.
jal x0, save_to_ram   # Use jal x0 as an unconditional jump.
# ------------------------------------------------------------

# ------------------------------------------------------------
force_0:
addi t0, x0, 0        # Replace the negative value with 0.
jal x0, save_to_ram   # Skip the force_255 code.
# ------------------------------------------------------------

# ------------------------------------------------------------
force_255:
addi t0, x0, 255      # Replace the value with the maximum allowed value (255).
# ------------------------------------------------------------

# ------------------------------------------------------------
save_to_ram:
sw t0, 0(s0)          # Store the final value back into memory.
# ------------------------------------------------------------

# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
