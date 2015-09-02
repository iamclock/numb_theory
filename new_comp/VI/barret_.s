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
  mov byte[ebp+121],1
  mov ebx,[ebp+1416]
  mov [ebp+220],ebx
  mov [ebp+620],dword 100
  add [ebp+1416],dword 100
  mov [ebp+1020],dword 0
  call _addmem
  mov byte[ebp+122],0
  mov ebx,[ebp+1416]
  mov [ebp+224],ebx
  mov [ebp+624],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1024],dword 0
  call _addmem
  mov byte[ebp+123],0
  mov ebx,[ebp+1416]
  mov [ebp+228],ebx
  mov [ebp+628],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1028],dword 0
  call _addmem
  mov byte[ebp+124],0
  mov ebx,[ebp+1416]
  mov [ebp+232],ebx
  mov [ebp+632],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1032],dword 0
  call _addmem
  xor eax,eax
  mov [ebp+1024],eax
  mov [ebp+1028],eax
  add [ebp+1020],dword _LM1
  mov ebx,[ebp+620]
  cmp [ebp+1020],ebx
  ja _errend
  mov ecx,_LM1
  mov esi,_M1
  mov edi,[ebp+220]
  add edi,[ebp+1020]
  sub edi,_LM1
  cld
  rep movsb
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+122]
  mov [edx+122],al
  mov eax,[ebp+224]
  mov [edx+224],eax
  mov eax,[ebp+624]
  mov [edx+624],eax
  mov eax,[ebp+1024]
  mov [edx+1024],eax
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov [edx+36],dword 0
  mov al,[ebp+122]
  mov [edx+122],al
  mov eax,[ebp+224]
  mov [edx+224],eax
  mov eax,[ebp+624]
  mov [edx+624],eax
  mov eax,[ebp+1024]
  mov [edx+1024],eax
  mov ebp,edx
  call big_int_input
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1024]
  mov [ebp+1024],eax
  mov eax,[edx+44]
  mov [ebp+36],eax
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+123]
  mov [edx+122],al
  mov eax,[ebp+228]
  mov [edx+224],eax
  mov eax,[ebp+628]
  mov [edx+624],eax
  mov eax,[ebp+1028]
  mov [edx+1024],eax
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov eax,[ebp+36]
  mov [edx+36],eax
  mov al,[ebp+123]
  mov [edx+122],al
  mov eax,[ebp+228]
  mov [edx+224],eax
  mov eax,[ebp+628]
  mov [edx+624],eax
  mov eax,[ebp+1028]
  mov [edx+1024],eax
  mov ebp,edx
  call big_int_input
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1024]
  mov [ebp+1028],eax
  mov eax,[edx+44]
  mov [ebp+36],eax
  mov eax,[ebp+1028]
  mov edx,eax
  mov eax,[ebp+1024]
  cmp edx,eax
  ja .P10
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+122]
  mov [edx+121],al
  mov eax,[ebp+224]
  mov [edx+220],eax
  mov eax,[ebp+624]
  mov [edx+620],eax
  mov eax,[ebp+1024]
  mov [edx+1020],eax
  mov [edx+8],dword 4
  mov ebp,edx
  call bigint_bits_count
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+44]
  mov [ebp+44],eax
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
  mov eax,[ebp+44]
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
  mov al,[ebp+123]
  mov [edx+121],al
  mov eax,[ebp+228]
  mov [edx+220],eax
  mov eax,[ebp+628]
  mov [edx+620],eax
  mov eax,[ebp+1028]
  mov [edx+1020],eax
  mov [edx+8],dword 4
  mov ebp,edx
  call bigint_bits_count
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+44]
  mov [ebp+48],eax
  mov eax,4
  mov ebx,1
  mov ecx,_M4
  mov edx,_LM4
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov eax,[ebp+48]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,4
  mov ebx,1
  mov ecx,_M5
  mov edx,_LM5
  int 0x80
  mov eax,[ebp+44]
  mov edx,2
  mul edx
  mov [ebp+108],edx
  mov [ebp+68],eax
  mov eax,[ebp+48]
  mov edx,eax
  mov eax,[ebp+68]
  cmp edx,eax
  ja .P10
  mov eax,4
  mov [ebp+8],eax
  mov eax,4
  mov ebx,1
  mov ecx,_M6
  mov edx,_LM6
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov eax,[ebp+1032]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  jmp .P21
.P10:
  mov eax,4
  mov ebx,1
  mov ecx,_M7
  mov edx,_LM7
  int 0x80
  jmp .P21
.P21:
  ret
big_int_input:
  xor eax,eax
  mov [ebp+40],eax
  xor eax,eax
  mov [ebp+48],eax
  xor eax,eax
  mov [ebp+76],eax
  mov eax,[ebp+1020]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P6
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,[ebp+1020]
  cmp edx,eax
  jae .P8
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,48
  cmp edx,eax
  jne .P7
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,120
  cmp edx,eax
  jne .P7
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov [ebp+48],eax
  mov [ebp+20],eax
.P10:
  mov eax,[ebp+48]
  mov edx,eax
  mov eax,[ebp+1020]
  cmp edx,eax
  je .P11
  mov ebx,[ebp+48]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,32
  cmp edx,eax
  je .P11
  mov ebx,[ebp+48]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,10
  cmp edx,eax
  je .P11
  mov eax,[ebp+48]
  inc eax
  mov [ebp+48],eax
  jmp .P10
.P11:
  mov eax,[ebp+48]
  mov [ebp+44],eax
  sub eax,1
  mov [ebp+36],eax
  mov eax,[ebp+36]
  sub eax,[ebp+20]
  add eax,1
  mov ebx,8
  xor edx,edx
  div ebx
  mov [ebp+108],edx
  mov [ebp+1024],eax
  mov eax,[ebp+36]
  sub eax,[ebp+20]
  add eax,1
  mov ebx,8
  xor edx,edx
  div ebx
  mov [ebp+108],eax
  mov eax,edx
  mov [ebp+80],eax
  mov eax,[ebp+44]
  inc eax
  mov [ebp+44],eax
  xor eax,eax
  mov [ebp+48],eax
  xor eax,eax
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  mov eax,[ebp+80]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P1
  mov eax,[ebp+1024]
  add eax,1
  mov [ebp+1024],eax
.P1:
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,48
  cmp edx,eax
  jb .P7
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,57
  cmp edx,eax
  ja .P2
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  sub eax,48
  mov [ebp+96],eax
  jmp .P4
.P2:
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,65
  cmp edx,eax
  jb .P7
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,70
  cmp edx,eax
  ja .P3
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  sub eax,65
  add eax,10
  mov [ebp+96],eax
  jmp .P4
.P3:
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,97
  cmp edx,eax
  jb .P7
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,102
  cmp edx,eax
  ja .P7
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  sub eax,97
  add eax,10
  mov [ebp+96],eax
.P4:
  mov eax,[ebp+96]
  mov cl,[ebp+76]
  shl eax,cl
  mov [ebp+96],eax
  mov eax,[ebp+76]
  add eax,4
  mov [ebp+76],eax
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  or eax,[ebp+96]
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  mov eax,[ebp+36]
  dec eax
  mov [ebp+36],eax
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,[ebp+20]
  cmp edx,eax
  jb .P9
  mov eax,[ebp+40]
  inc eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax,8
  cmp edx,eax
  jae .P5
  jmp .P1
.P5:
  mov eax,[ebp+48]
  inc eax
  mov [ebp+48],eax
  xor eax,eax
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  mov [ebp+76],eax
  mov [ebp+40],eax
  jmp .P1
.P6:
  mov eax,4
  mov ebx,1
  mov ecx,_M8
  mov edx,_LM8
  int 0x80
  jmp .P9
.P7:
  mov eax,4
  mov ebx,1
  mov ecx,_M9
  mov edx,_LM9
  int 0x80
  xor eax,eax
  mov [ebp+1024],eax
  jmp .P9
.P8:
  mov eax,4
  mov ebx,1
  mov ecx,_M10
  mov edx,_LM10
  int 0x80
  xor eax,eax
  mov [ebp+1024],eax
.P9:
  ret
bigint_bits_count:
  xor eax,eax
  mov [ebp+100],eax
  mov [ebp+40],eax
  mov eax,[ebp+8]
  mov [ebp+80],eax
.P4:
  mov eax,[ebp+80]
  shr eax,byte 1
  mov [ebp+80],eax
  mov eax,[ebp+80]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P5
  mov eax,[ebp+40]
  inc eax
  mov [ebp+40],eax
  mov eax,[ebp+100]
  shl eax,byte 1
  mov [ebp+100],eax
  mov eax,[ebp+100]
  or eax,1
  mov [ebp+100],eax
  jmp .P4
.P5:
  mov eax,4
  mov ebx,1
  mov ecx,_M11
  mov edx,_LM11
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov eax,[ebp+40]
  mov [edx+44],eax
  mov ebp,edx
  call printf
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,4
  mov ebx,1
  mov ecx,_M12
  mov edx,_LM12
  int 0x80
  xor eax,eax
  mov [ebp+44],eax
  mov [ebp+36],eax
  mov eax,[ebp+1020]
  and eax,eax
  jz .P3
  mov eax,[ebp+1020]
  sub eax,1
  mov [ebp+36],eax
  mov eax,32
  mov [ebp+76],eax
.P1:
  mov eax,[ebp+100]
  mov cl,[ebp+76]
  shl eax,cl
  mov [ebp+80],eax
  mov eax,[ebp+76]
  mov [ebp+44],eax
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  and eax,[ebp+80]
  mov [ebp+96],eax
  and eax,eax
  jz .P2
  mov eax,[ebp+44]
  inc eax
  mov [ebp+44],eax
  jmp .P3
.P2:
  mov eax,[ebp+76]
  sub eax,[ebp+40]
  mov [ebp+76],eax
  mov eax,[ebp+76]
  mov edx,eax
  mov eax,32
  cmp edx,eax
  jb .P1
.P3:
  mov eax,[ebp+36]
  mov edx,32
  mul edx
  mov [ebp+108],edx
  add eax,[ebp+44]
  mov [ebp+44],eax
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
_M1: db '0x123 0x12'
_LM1 equ $-_M1
_M2: db  'k= '
_LM2 equ $-_M2
_M3: db  '',10,''
_LM3 equ $-_M3
_M4: db  'l= '
_LM4 equ $-_M4
_M5: db  '',10,''
_LM5 equ $-_M5
_M6: db  'Q4= '
_LM6 equ $-_M6
_M7: db  'ОШИБКА: модуль больше чем число.',10,''
_LM7 equ $-_M7
_M8: db  'ОШИБКА: Символьный комплекс пустой',10,''
_LM8 equ $-_M8
_M9: db  'ОШИБКА: Число не шестнадцатеричное',10,''
_LM9 equ $-_M9
_M10: db  'ОШИБКА: Символьный комплекс закончился.',10,''
_LM10 equ $-_M10
_M11: db  'j= '
_LM11 equ $-_M11
_M12: db  '',10,''
_LM12 equ $-_M12
