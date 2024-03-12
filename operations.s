.global add
.global subtract
.global multiply
.global isgreaterthan10
.global shift
.text


# generally, the first argument is in %rdi, the second in %rsi, and the result is in %rax

add:
    mov %rdi, %rax   # copy the first argument into the result (i.e rax = rdi)
    add %rsi, %rax   # add the second argument to the result (i.e rax = rax + rsi)
    ret

subtract:
    mov %rdi, %rax   # copy the first argument into the result (i.e rax = rdi)
    sub %rsi, %rax   # subtract the second argument from the result (i.e rax = rax - rsi)
    ret

multiply:
    mov %rdi, %rax   # copy the first argument into the result (i.e rax = rdi)
    imul %rsi, %rax  # multiply the second argument by the result (i.e rax = rax * rsi)
    # mul %rsi
    ret

isgreaterthan10:
    cmp $10, %rdi    # compare the first argument to 10
    jg .yes          # if the first argument is greater than 10, jump to .yes
    mov $0, %rax     # otherwise, set the result to 0
    ret

.yes:
    mov $1, %rax     # if the first argument is greater than 10, set the result to 1
    ret

shift:
	mov %rsi, %rcx      # rcx = rsi
	sal %cl, %rdi       # rdi = rdi << cl
	mov %rdi, %rax      # rax = rdi
	ret                 # return
