.global solve

solve:
    mov (%rdi), %rax      # Move first element of array into rax, will be using it to store the smallest element in the array
    mov (%rdi), %rbx      # Move first element of array into rbx, will be using it to store the largest element in the array
    mov $1, %r8           # Initialize loop counter to 1

for_loop:
    cmp %r8, %rsi             # Compare loop counter with length of array
    je loop_end               # If they are equal, exit the loop
    add $8, %rdi              # Move to the pointer to point to the next element in the array
    inc %r8                   # Increment loop counter
    cmp %rax, (%rdi)          # Compare the current element with the smallest element (%rax)
    jl update_smallest        # If the current element is less than the smallest element, jump to update_smallest
    cmp %rbx, (%rdi)          # Compare the current element with the largestt element (%rbx)
    jg update_largest         # If the current element is greater than the smallest element, jump to update_largest
    jmp for_loop              # Jump back to the beginning of the loop
    
update_smallest:
    mov (%rdi), %rax      # Update the smallest element (%rax) with the current element
    jmp for_loop          # Jump back to the beginning of the loop

update_largest:
    mov (%rdi), %rbx      # Update the largestt element (%rax) with the current element
    jmp for_loop          # Jump back to the beginning of the loop

loop_end:
    add %rbx, %rax        # Add the largest and smallest elements together (rax = rax + rbx)
    ret                   # Return the sum stored in rax and exit the funnction



    


