
.global rotate_left

rotate_left:
    mov (%rdi), %rbx            # Store first element of array in rbx
    mov $1, %r8                 # Initialise loop counter to 1

for_loop:
    cmp %r8, %rsi                    # Compare loop counter with length of array
    je loop_end                      # If they are equal, exit the loop
    mov (%rdi, %r8, 8), %rcx         # Store the current element in rcx
    mov %rcx, -8(%rdi, %r8 ,8)       # Shift the element by 1 index to the left
    inc %r8                          # Increment the loop counter
    jmp for_loop                     # Jump back to the beginning of the loop

loop_end:
    dec %rsi                         # Decrement length of array to point to the last element
    mov %rbx, (%rdi, %rsi, 8)        # Insert the originally first element of the array at the end
    ret                              # Void function doesn't return anything, just exits from the function
    




    


