
.global rotate_left

rotate_left:
    mov (%rdi), %rbx
    mov $1, %r8

for_loop:
    cmp %r8, %rsi
    je loop_end
    mov (%rdi, %r8, 8), %rcx 
    mov %rcx, -8(%rdi, %r8 ,8)   
    inc %r8             
    jmp for_loop

loop_end:
    dec %rsi    
    mov %rbx, (%rdi, %rsi, 8)
    ret
    




    


