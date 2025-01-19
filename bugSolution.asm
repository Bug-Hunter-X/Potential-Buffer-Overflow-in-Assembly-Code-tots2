mov eax, [ebp+8]
add eax, 10
mov [ebp-4], eax
mov ecx, [ebp+12]
mov edx, [ebp+16]
mov edi, [ebp+20] ; Added: Size of the buffer
cmp edi, 0 ; check size for zero
je zero_size_handler ; handle zero size
mov esi, [ecx] ;Get current size
cmp edi, esi ;compare sizes
jge check_ok ; check if space is enough
jmp overflow_handler ; handle overflow
check_ok:
mov [ecx], edx
mov eax, [ebp-4]
jmp end_function
zero_size_handler:
;Handle zero size error
jmp end_function
overflow_handler:
;Handle overflow error
jmp end_function
end_function:
ret