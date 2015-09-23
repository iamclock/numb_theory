global _start
section .text
_start:
  mov eax,45
  xor ebx,ebx
  int 0x80
  mov [_sizebim],eax
  push eax
  sub esp,1412
  push ebp
  mov ebp,esp
  call main
  mov eax,1
  mov ebx,0
  int 0x80
main:
  mov byte[ebp+121],0
  mov ebx,[ebp+1416]
  mov [ebp+220],ebx
  mov [ebp+620],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1020],dword 0
  call _addmem
  mov eax,3
  mov ebx,[ebp+220]
  mov [ebx+0],eax
  mov eax,5
  mov ebx,[ebp+220]
  mov [ebx+4],eax
  mov eax,7
  mov ebx,[ebp+220]
  mov [ebx+8],eax
  mov eax,11
  mov ebx,[ebp+220]
  mov [ebx+12],eax
  mov eax,4
  mov [ebp+1020],eax
  mov eax,6
  mov [ebp+44],eax
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov eax,[ebp+44]
  mov [edx+56],eax
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov ebp,edx
  call trial_division_method
  mov edx,esp
  pop ebp
  add esp,1420
  ret
trial_division_method:
  mov byte[ebp+122],0
  mov ebx,[ebp+1416]
  mov [ebp+224],ebx
  mov [ebp+624],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1024],dword 0
  call _addmem
  mov eax,[ebp+56]
  mov edx,eax
  mov eax,2
  cmp edx,eax
  jb .P5
  xor eax,eax
  mov [ebp+36],eax
  mov [ebp+40],eax
.P1:
  mov eax,[ebp+56]
  mov edx,eax
  mov eax,1
  cmp edx,eax
  je .P7
.P2:
  mov eax,[ebp+56]
  xor edx,edx
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov ebx,[ebx]
  div ebx
  push eax
  push edx
  pop eax
  pop dword[ebp+108]
  mov [ebp+72],eax
  mov eax,[ebp+56]
  xor edx,edx
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov ebx,[ebx]
  div ebx
  mov [ebp+108],edx
  mov [ebp+68],eax
  mov eax,[ebp+72]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P4
  mov eax,[ebp+68]
  mov edx,eax
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  cmp edx,eax
  ja .P3
  jmp .P1
.P3:
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
.P4:
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  mov eax,[ebp+40]
  inc eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov [ebp+1024],eax
  mov eax,[ebp+68]
  mov [ebp+56],eax
  jmp .P1
.P5:
  mov eax,4
  mov ebx,1
  mov ecx,_M1
  mov edx,_LM1
  int 0x80
  jmp .P7
.P6:
.P7:
  ret
_addmem:
  push eax
  push ebx
  mov ebx,[ebp+1416]
  cmp ebx,[_sizebim]
  jbe .end
  sub ebx,[_sizebim]
  add ebx,1000h
  add ebx,[_sizebim]
  mov eax,45
  int 0x80
  and eax,eax
  jnz ._errend
  mov eax,1
  mov ebx,1
  int 0x80
._errend:
  mov [_sizebim],ebx
.end:
  pop ebx
  pop eax
  ret
_errend:
  mov eax,1
  mov ebx,1
  int 0x80
section .data
_sizebim dd 0
_rand dd 0xa1248aa9
_vesa:
  db 0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4
  db 1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5
  db 1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5
  db 2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6
  db 1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5
  db 2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6
  db 2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6
  db 3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7
  db 1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5
  db 2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6
  db 2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6
  db 3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7
  db 2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6
  db 3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7
  db 3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7
  db 4,5,5,6,5,6,6,7,5,6,6,7,6,7,7,8

_I:
  dd 0x1,0x2,0x4,0x8,0x10,0x20,0x40,0x80,0x100,0x200,0x400,0x800,0x1000,0x2000,0x4000,0x8000
  dd 0x10000,0x20000,0x40000,0x80000,0x100000,0x200000,0x400000,0x800000
  dd 0x1000000,0x2000000,0x4000000,0x8000000,0x10000000,0x20000000,0x40000000,0x80000000
_M1: db  'Число должно быть больше 1'
_LM1 equ $-_M1
