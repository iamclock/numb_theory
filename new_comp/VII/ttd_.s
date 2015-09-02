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
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov [edx+56],dword 6
  mov ebp,edx
  call trial_division_method
  mov edx,esp
  pop ebp
  add esp,1420
  ret
trial_division_method:
  mov byte[ebp+121],0
  mov ebx,[ebp+1416]
  mov [ebp+220],ebx
  mov [ebp+620],dword 16
  add [ebp+1416],dword 16
  mov [ebp+1020],dword 0
  call _addmem
  mov eax,[ebp+56]
  mov ebx,2
  xor edx,edx
  div ebx
  mov [ebp+108],eax
  mov eax,edx
  mov [ebp+44],eax
  mov eax,[ebp+44]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P4
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
  mov eax,[ebp+1020]
  sub eax,1
  mov [ebp+40],eax
  mov eax,1
  mov [ebp+76],eax
.P1:
  xor eax,eax
  mov [ebp+36],eax
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov ebx,[ebp+220]
  mov eax,[ebx+0]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,4
  mov ebx,1
  mov ecx,_M1
  mov edx,_LM1
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov ebx,[ebp+220]
  mov eax,[ebx+4]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,4
  mov ebx,1
  mov ecx,_M2
  mov edx,_LM2
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov ebx,[ebp+220]
  mov eax,[ebx+8]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,4
  mov ebx,1
  mov ecx,_M3
  mov edx,_LM3
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov ebx,[ebp+220]
  mov eax,[ebx+12]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,4
  mov ebx,1
  mov ecx,_M4
  mov edx,_LM4
  int 0x80
.P2:
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  add eax,2
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov [ebx],eax
  mov eax,[ebp+36]
  mov [ebp+40],eax
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  add eax,4
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov [ebx],eax
  mov eax,[ebp+36]
  mov [ebp+40],eax
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,[ebp+1020]
  cmp edx,eax
  jne .P2
  mov eax,[ebp+76]
  dec eax
  mov [ebp+76],eax
  mov eax,[ebp+76]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  ja .P1
  jmp .P5
.P4:
  mov eax,4
  mov ebx,1
  mov ecx,_M5
  mov edx,_LM5
  int 0x80
.P5:
  ret
printf:
  mov byte[ebp+121],1
  mov ebx,[ebp+1416]
  mov [ebp+220],ebx
  mov [ebp+620],dword 100
  add [ebp+1416],dword 100
  mov [ebp+1020],dword 0
  call _addmem
  xor eax,eax
  mov [ebp+1020],eax
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov eax,[ebp+44]
  mov [edx+4],eax
  mov [edx+68],dword 10
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov ebp,edx
  call n2s
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1020]
  mov [ebp+1020],eax
  mov eax,4
  mov ebx,1
  mov ecx,[ebp+220]
  mov edx,[ebp+1020]
  int 0x80
  ret
n2s:
.P1:
  mov eax,[ebp+4]
  xor edx,edx
  mov ebx,[ebp+68]
  div ebx
  push eax
  push edx
  pop eax
  pop dword[ebp+108]
  mov [ebp+8],eax
  mov eax,[ebp+4]
  xor edx,edx
  mov ebx,[ebp+68]
  div ebx
  mov [ebp+108],edx
  mov [ebp+4],eax
  mov eax,[ebp+8]
  add eax,48
  mov [ebp+12],eax
  mov eax,[ebp+8]
  mov edx,eax
  mov eax,10
  cmp edx,eax
  jb .P2
  mov eax,65
  add eax,[ebp+8]
  sub eax,10
  mov ebx,[ebp+1020]
  mov ecx,[ebp+1020]
  cmp ecx,[ebp+620]
  jae _errend
  mov edi,ecx
  add edi,[ebp+220]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+220]
  mov [ebx],al
  inc dword [ebp+1020]
  jmp .P3
.P2:
  mov eax,[ebp+12]
  mov ebx,[ebp+1020]
  mov ecx,[ebp+1020]
  cmp ecx,[ebp+620]
  jae _errend
  mov edi,ecx
  add edi,[ebp+220]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+220]
  mov [ebx],al
  inc dword [ebp+1020]
.P3:
  mov eax,[ebp+4]
  and eax,eax
  jnz .P1
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov ebp,edx
  call pervec
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1020]
  mov [ebp+1020],eax
  ret
pervec:
  xor eax,eax
  mov [ebp+36],eax
  mov eax,[ebp+1020]
  sub eax,1
  mov [ebp+40],eax
.P1:
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,[ebp+40]
  cmp edx,eax
  jae .P2
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov [ebp+80],eax
  mov ebx,[ebp+40]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov [ebx],al
  mov eax,[ebp+80]
  mov ebx,[ebp+40]
  add ebx,[ebp+220]
  mov [ebx],al
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+40]
  dec eax
  mov [ebp+40],eax
  jmp .P1
.P2:
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
_M1: db  '',10,''
_LM1 equ $-_M1
_M2: db  '',10,''
_LM2 equ $-_M2
_M3: db  '',10,''
_LM3 equ $-_M3
_M4: db  '',10,''
_LM4 equ $-_M4
_M5: db  'Число составное',10,''
_LM5 equ $-_M5
