.global solve

solve:
    movq $1, %rax       # Initialize product to 1
    movq $0, %r8        # Initialize loop counter to 0

calc_product_loop:
    cmp %rdx, %r8     # Compare loop counter with length
    je calc_product_end # If loop counter == length, exit loop

    movq (%rdi, %r8, 8), %rbx  # Load nums[i] into %rbx
    # Calculate the product excluding nums[i]
    movq $0, %r9        # Initialize inner loop counter to 0
    movq $1, %rax

inner_loop:
    cmp %rdx, %r9      # Compare inner loop counter with length
    je inner_loop_end  # If inner loop counter == length, exit inner loop

    cmp %r9, %r8     # Compare inner loop counter with current index
    je inner_loop_next # If inner loop counter == current index, skip multiplication

    movq (%rdi, %r9, 8), %rcx  # Load nums[j] into %rcx
    imul %rcx, %rax            # Multiply product by nums[j]

inner_loop_next:
    inc %r9             # Increment inner loop counter
    jmp inner_loop      # Repeat inner loop

inner_loop_end:
    movq %rax, (%rsi, %r8, 8)  # Store product in answer array

    inc %r8          # Increment loop counter
    jmp calc_product_loop # Repeat loop

calc_product_end:
    ret