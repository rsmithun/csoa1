.global rotate_left
rotate_left:
    push %rbp                   # Save the base pointer
    mov %rsp, %rbp              # Set the base pointer

    movq (%rdi), %rax           # Load the first element of the array
    movq %rax, %rdx             # Store the first element in RDX

    movq $1, %rcx               # Set RCX to 1 (index of the next element)
    movq $1, %rsi               # Set RSI to 1 (index of the current element)

shift_loop:
    cmp %rsi, %rdi              # Compare RDI with RSI (loop until RDI reaches the end)
    je end_shift                # Jump to end_shift if RDI is equal to RSI

    movq (%rdi, %rcx, 8), %rbx  # Load the next element into RBX
    movq %rbx, (%rdi, %rcx, 8)  # Store the element at the current position

    inc %rcx                    # Increment RCX (index of the next element)
    inc %rsi                    # Increment RSI (index of the current element)
    jmp shift_loop              # Jump back to shift_loop

end_shift:
    movq %rdx, (%rdi, %rcx, 8)  # Store the first element at the end of the array

    pop %rbp                    # Restore the base pointer
    ret                         # Return from the function
