.global find_lonely_number

find_lonely_number:
    xor %rax, %rax              # Initialize result to 0

for_loop:
    xor (%rdi), %rax            # XOR current element with result
    add $8, %rdi                # Move pointer to the next element
    dec %rsi                    # Decrement loop counter
    jnz for_loop                # If counter is not zero, continue loop

ret                             # Return result present in rax
