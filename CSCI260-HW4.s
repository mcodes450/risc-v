# Mohammed Uddin
# CSCI 26000 - HW4: Store, then swap
# s0 = base of array A, s1 = h. Store h into A[0], then swap A[2] and A[6]. Use only lw, sw
# Write your solution between the markers. Everything outside is for local testing.
#
# AI use:      none
# Worked with: none

# Personal Note: Memory addresses jump by 4 bytes for each consecutive box in the array.
# Personal Note: The instructions ask us to jump straight from index 2 over to index 6, so we have to bypass elements A[3], A[4], and A[5].

.data
A: .word 10, 11, 12, 13, 14, 15, 16, 17
.text
main:
 la s0, A # base of A (local-test setup)
 li s1, 99 # h (local-test)

# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE
# Store the value 'h' (from s1) directly into array index A[0]
sw s1, 0(s0)        # A[0] = h

# Read both values from memory into temporary registers simultaneously
lw t0, 8(s0)        # t0 = original value of A[2]
lw t1, 24(s0)       # t1 = original value of A[6]

# Write the values back to the swapped memory addresses
sw t1, 8(s0)        # Memory at A[2] now gets the original A[6] value
sw t0, 24(s0)       # Memory at A[6] now gets the original A[2] value
# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
