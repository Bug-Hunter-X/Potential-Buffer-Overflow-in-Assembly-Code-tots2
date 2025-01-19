mov eax, [ebp+8]
add eax, 10
mov [ebp-4], eax
mov ecx, [ebp+12]
mov edx, [ebp+16]
mov [ecx], edx
mov eax, [ebp-4]
ret