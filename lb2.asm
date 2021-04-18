format PE
section '.text' code readable executable

start:
mov esi, arr
mov ecx, arrsize
xor eax, eax
mov eax, 0
xor ebx, ebx
mov ebx, 0

main_loop:
lodsb
test al, 2
jz havent_2nd_bit
shr al, 1
havent_2nd_bit:
add ebx, eax
loop main_loop
ret
section '.data' data readable writeable
arr db 1,2,3,4,5,6,7
arrsize = 7
