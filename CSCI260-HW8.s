# Mohammed Uddin
# CSCI 26000 - HW8: Largest number in array
# s0 = base of array A, s1 = length n.
# Put the largest value in the array in s2

# AI use:      none
# Worked with: none

.data
    A: .word 3, 7, 2, 9, 1

.text
main:
   la s0, A # base of A (local-test setup)
   li s1, 5 # n (local-test setup)

# DONOTMODIFYTHISLINE
# YOUR CODE STARTS HERE

    # Edge case: if n <= 0, there is nothing to process
    bge x0, s1, LOOP_END

    # Initialize max with first element A[0]
    lw s2, 0(s0)

    # i = 1 (start from second element)
    addi t0, x0, 1

LOOP_START:
    # Exit loop if i >= n
    bge t0, s1, LOOP_END

    # Compute address of A[i]
    slli t1, t0, 2
    add t1, s0, t1

    # Load A[i]
    lw t2, 0(t1)

    # If current max >= A[i], no update needed
    bge s2, t2, SKIP_UPDATE

    # Otherwise update max
    addi s2, t2, 0

SKIP_UPDATE:
    # i++
    addi t0, t0, 1

    # Repeat loop
    jal x0, LOOP_START

LOOP_END:

# YOUR CODE ENDS HERE
# DONOTMODIFYTHISLINE
