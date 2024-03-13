.global check_palindrome

check_palindrome:
    lea (%rdi, %rsi), %rdx
    dec %rdx

for_loop:
    cmp %rdx, %rdi
    jge loop_end
    mov (%rdi), %bl       
    mov (%rdx), %cl
    cmp %bl, %cl           
    jne not_palindrome
    inc %rdi               
    dec %rdx          
    jmp for_loop

not_palindrome:
    xor %rax, %rax
    ret
    
loop_end:
    mov $1, %rax;
    ret