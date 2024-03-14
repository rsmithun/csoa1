.global solve

solve:
    movq $1, %rax        # Initialize product to 1
    movq $0, %r8         # Initialize loop counter to 0

for_loop:
    cmp %rdx, %r8         # Compare loop counter with length of array
    je loop_end           # If they are equal, exit loop
    movq $0, %r9          # Initialize inner loop counter to 0
    movq $1, %rax         # Initialize product to 1

inner_loop:
    cmp %rdx, %r9            # Compare inner loop counter with length of array
    je inner_loop_end        # If they are equal, exit inner loop

    cmp %r9, %r8             # Compare inner loop counter with current index
    je inner_loop_next       # If they are equal, skip multiplication and jump to inner_loop_next

    movq (%rdi, %r9, 8), %rcx     # Move current element into rcx
    imul %rcx, %rax               # Multiply it with the product (rax = rax * rcx)

inner_loop_next:
    inc %r9              # Increment inner loop counter
    jmp inner_loop       # Repeat inner loop

inner_loop_end:
    movq %rax, (%rsi, %r8, 8)    # Store product in answer array
    inc %r8                      # Increment loop counter
    jmp for_loop                 # Repeat loop

loop_end:
    ret        # Void function doesn't return anything, just exits from the function

