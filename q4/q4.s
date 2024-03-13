
.global solve

solve:
    mov (%rdi), %rax
    mov (%rdi), %rbx
    mov $1, %r8

for_loop:
        
    cmp %r8, %rsi
    je loop_end
    add $8, %rdi
    inc %r8
    cmp %rax, (%rdi)      
    jle update_smallest   
    cmp %rbx, (%rdi)
    jge update_largest
    jmp for_loop
    
update_smallest:
    mov (%rdi), %rax
    jmp for_loop

update_largest:
    mov (%rdi), %rbx
    jmp for_loop

loop_end:
    add %rbx, %rax   
    ret



    


