.global check_palindrome

check_palindrome:
    lea (%rdi, %rsi), %rdx     # Calculate the address of end of the string and store it in rdx
    dec %rdx                   # Decrement it by 1 so that it points to the last character in the string

for_loop:
    cmp %rdx, %rdi             # Compare the start and end pointers
    jge loop_end               # If the start pointer is greater than or equal to the end pointer, exit the loop
    mov (%rdi), %bl            # Move the character (byte) at the start pointer into bl
    mov (%rdx), %cl            # Move the character (byte) at the end pointer into cl
    cmp %bl, %cl               # Compare them
    jne not_palindrome         # If they are not equal, jump to not_palindrome
    inc %rdi                   # Increment start pointer to point to the next character in the string
    dec %rdx                   # Decrement end pointer to point to the previous character in the string
    jmp for_loop               # Jump back to the beginning of the loop 

not_palindrome:
    xor %rax, %rax             # Set rax to 0 (given string is not a palindrome)
    ret                        # Exit the function, returning value present in rax
    
loop_end:
    mov $1, %rax;              # Set rax to 1 (given string is a palindrome)
    ret                        # Exit the function, returning value present in rax

    