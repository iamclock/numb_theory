global _start
extern __addbn
extern __subbn
extern __addone
extern __subone
extern __mulbn
extern __divbn
extern __divbn2
extern __modbn
section .text
_start:
  mov eax,45
  xor ebx,ebx
  int 0x80
  mov [_sizebim],eax
  mov [_addrbim],eax
  sub esp,1420
  push ebp
  mov ebp,esp
  call test2
  mov eax,1
  mov ebx,0
  int 0x80
test2:
  mov byte[ebp+121],1
  mov ebx,[_addrbim]
  mov [ebp+220],ebx
  mov [ebp+620],dword 100*4
  add [_addrbim],dword 100
  mov [ebp+1020],dword 0
  call _addmem
  mov byte[ebp+122],0
  mov ebx,[_addrbim]
  mov [ebp+224],ebx
  mov [ebp+624],dword 100*4
  add [_addrbim],dword 400
  mov [ebp+1024],dword 0
  call _addmem
  mov byte[ebp+123],0
  mov ebx,[_addrbim]
  mov [ebp+228],ebx
  mov [ebp+628],dword 100*4
  add [_addrbim],dword 400
  mov [ebp+1028],dword 0
  call _addmem
  mov byte[ebp+124],0
  mov ebx,[_addrbim]
  mov [ebp+232],ebx
  mov [ebp+632],dword 100*4
  add [_addrbim],dword 400
  mov [ebp+1032],dword 0
  call _addmem
  mov byte[ebp+125],0
  mov ebx,[_addrbim]
  mov [ebp+236],ebx
  mov [ebp+636],dword 100*4
  add [_addrbim],dword 400
  mov [ebp+1036],dword 0
  call _addmem
  xor eax,eax
  mov [ebp+1020],eax
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
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov al,[ebp+123]
  mov [edx+122],al
  mov eax,[ebp+228]
  mov [edx+224],eax
  mov eax,[ebp+628]
  mov [edx+624],eax
  mov eax,[ebp+1028]
  mov [edx+1024],eax
  mov ebp,edx
  call stoBN16
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  mov eax,[edx+1024]
  mov [ebp+1028],eax
  mov eax,4
  mov ebx,1
  mov ecx,_M2
  mov edx,_LM2
  int 0x80
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov al,[ebp+123]
  mov [edx+121],al
  mov eax,[ebp+228]
  mov [edx+220],eax
  mov eax,[ebp+628]
  mov [edx+620],eax
  mov eax,[ebp+1028]
  mov [edx+1020],eax
  mov ebp,edx
  call printBN16
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  xor eax,eax
  mov [ebp+1020],eax
  add [ebp+1020],dword _LM3
  mov ebx,[ebp+620]
  cmp [ebp+1020],ebx
  ja _errend
  mov ecx,_LM3
  mov esi,_M3
  mov edi,[ebp+220]
  add edi,[ebp+1020]
  sub edi,_LM3
  cld
  rep movsb
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov al,[ebp+121]
  mov [edx+121],al
  mov eax,[ebp+220]
  mov [edx+220],eax
  mov eax,[ebp+620]
  mov [edx+620],eax
  mov eax,[ebp+1020]
  mov [edx+1020],eax
  mov al,[ebp+125]
  mov [edx+122],al
  mov eax,[ebp+236]
  mov [edx+224],eax
  mov eax,[ebp+636]
  mov [edx+624],eax
  mov eax,[ebp+1036]
  mov [edx+1024],eax
  mov ebp,edx
  call stoBN16
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  mov eax,[edx+1024]
  mov [ebp+1036],eax
  mov eax,4
  mov ebx,1
  mov ecx,_M4
  mov edx,_LM4
  int 0x80
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov al,[ebp+125]
  mov [edx+121],al
  mov eax,[ebp+236]
  mov [edx+220],eax
  mov eax,[ebp+636]
  mov [edx+620],eax
  mov eax,[ebp+1036]
  mov [edx+1020],eax
  mov ebp,edx
  call printBN16
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  mov ecx,[ebp+1028]
  mov [ebp+112],ecx
  mov edi, ebp
  mov esi,[ebp+228]
.M1:
  mov eax,[esi]
  mov [edi - 64],eax
  times 4 inc esi
  times 4 dec edi
  loop .M1
  mov edi, [ebp+236]
  mov ecx, [ebp+1036]
  call __divbn2
  mov ecx,[ebp+112]
  mov [ebp+1020+3*4],ecx
  shl ecx, 2
  cmp [ebp+620+3*4],ecx
  jb _errend
  shr ecx, 2
  mov esi,ebp
  sub esi, 64
  mov edi,[ebp+220+3*4]
.M2:
  cmp ecx, 0
  jz .M3
  dec ecx
  mov edx, [esi]
  mov [edi], edx
  times 4 dec esi
  times 4 inc edi
  jmp .M2
.M3:
  mov eax,4
  mov ebx,1
  mov ecx,_M5
  mov edx,_LM5
  int 0x80
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov al,[ebp+124]
  mov [edx+121],al
  mov eax,[ebp+232]
  mov [edx+220],eax
  mov eax,[ebp+632]
  mov [edx+620],eax
  mov eax,[ebp+1032]
  mov [edx+1020],eax
  mov ebp,edx
  call printBN16
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  mov ecx,[ebp+1028]
  mov [ebp+112],ecx
  mov edi, ebp
  mov esi,[ebp+228]
.M4:
  mov eax,[esi]
  mov [edi - 64],eax
  times 4 inc esi
  times 4 dec edi
  loop .M4
  mov edi, [ebp+236]
  mov ecx, [ebp+1036]
  call __modbn
  mov ecx,[ebp+112]
  mov [ebp+1020+1*4],ecx
  shl ecx, 2
  cmp [ebp+620+1*4],ecx
  jb _errend
  shr ecx, 2
  mov esi,ebp
  sub esi, 64
  mov edi,[ebp+220+1*4]
.M5:
  cmp ecx, 0
  jz .M6
  dec ecx
  mov edx, [esi]
  mov [edi], edx
  times 4 dec esi
  times 4 inc edi
  jmp .M5
.M6:
  mov eax,4
  mov ebx,1
  mov ecx,_M6
  mov edx,_LM6
  int 0x80
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov al,[ebp+122]
  mov [edx+121],al
  mov eax,[ebp+224]
  mov [edx+220],eax
  mov eax,[ebp+624]
  mov [edx+620],eax
  mov eax,[ebp+1024]
  mov [edx+1020],eax
  mov ebp,edx
  call printBN16
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  ret
stoBN16:
  mov eax,[ebp+1020]
  mov [ebp+36],eax
  add eax,7
  shr eax,byte 3
  mov [ebp+1024],eax
  xor eax,eax
  mov [ebp+40],eax
  xor eax,eax
  mov [ebp+44],eax
  xor eax,eax
  mov ebx,[ebp+44]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
.P1:
  mov eax,[ebp+36]
  mov edx,eax
  mov eax, 0
  cmp edx,eax
  je .P2
  mov eax,[ebp+36]
  dec eax
  mov [ebp+36],eax
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov eax,[ebx]
  and eax,0xff
  mov [edx+4],eax
  mov ebp,edx
  call c2n
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  mov eax,[edx+8]
  mov [ebp+4],eax
  mov eax,[ebp+4]
  mov cl,[ebp+40]
  shl eax,cl
  mov ebx,[ebp+44]
  shl ebx,byte 2
  add ebx,[ebp+224]
  or eax,[ebx]
  mov ebx,[ebp+44]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  mov eax,[ebp+40]
  add eax,4
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax, 32
  cmp edx,eax
  jne .P1
  xor eax,eax
  mov [ebp+40],eax
  mov eax,[ebp+44]
  inc eax
  mov [ebp+44],eax
  mov eax,0
  mov ebx,[ebp+44]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  jmp .P1
.P2:
  ret
printBN16:
  mov eax,[ebp+1020]
  mov [ebp+36],eax
  shl eax,byte 3
  mov [ebp+56],eax
  mov byte[ebp+122],1
  mov ebx,[_addrbim]
  mov [ebp+224],ebx
  mov eax,[ebp+56]
  mov [ebp+624],eax
  and eax,0xfffffff0
  add eax,16
  add [_addrbim],eax
  mov [ebp+1024],dword 0
  call _addmem
  mov eax,0xffffffff
  mov [ebp+44],eax
.P1:
  mov eax,[ebp+36]
  mov edx,eax
  mov eax, 0
  cmp edx,eax
  je .P2
  mov eax,[ebp+36]
  dec eax
  mov [ebp+36],eax
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  mov [ebp+20],eax
  mov eax,8
  mov [ebp+40],eax
  mov eax,[ebp+44]
  add eax,8
  mov [ebp+44],eax
  mov [ebp+76],eax
.P3:
  mov eax,[ebp+20]
  and eax,15
  mov [ebp+4],eax
  mov eax,[ebp+20]
  shr eax,byte 4
  mov [ebp+20],eax
  push dword [_addrbim]
  sub esp,1416
  mov edx,esp
  push ebp
  mov eax,[ebp+4]
  mov [edx+4],eax
  mov ebp,edx
  call n2c
  pop ebp
  mov edx,esp
  add esp,1416
  pop dword [_addrbim]
  mov eax,[edx+8]
  mov [ebp+24],eax
  mov eax,[ebp+24]
  mov ebx,[ebp+76]
  add ebx,[ebp+224]
  mov [ebx],al
  mov eax,[ebp+76]
  dec eax
  mov [ebp+76],eax
  mov eax,[ebp+40]
  dec eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax, 0
  cmp edx,eax
  ja .P3
  jmp .P1
.P2:
  mov eax,[ebp+56]
  mov [ebp+1024],eax
  mov eax,4
  mov ebx,1
  mov ecx,[ebp+224]
  mov edx,[ebp+1024]
  int 0x80
  mov eax,4
  mov ebx,1
  mov ecx,_M7
  mov edx,_LM7
  int 0x80
  ret
c2n:
  mov eax,[ebp+4]
  sub eax,48
  mov [ebp+8],eax
  mov eax,[ebp+8]
  mov edx,eax
  mov eax, 10
  cmp edx,eax
  jb .P1
  mov eax,[ebp+4]
  sub eax,65
  add eax,10
  mov [ebp+8],eax
  mov eax,[ebp+4]
  mov edx,eax
  cmp edx,eax
  jbe .P1
  mov eax,[ebp+4]
  sub eax,97
  add eax,10
  mov [ebp+8],eax
.P1:
  ret
n2c:
  mov eax,[ebp+4]
  add eax,48
  mov [ebp+8],eax
  mov eax,[ebp+4]
  mov edx,eax
  mov eax, 10
  cmp edx,eax
  jb .P1
  mov eax,[ebp+4]
  sub eax,10
  add eax,65
  mov [ebp+8],eax
.P1:
  ret
_addmem:
  push eax
  push ebx
  mov ebx,[_addrbim]
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
  mov eax, 4
  mov ebx, 1
  mov ecx, ErrMsg
  mov edx, LenErrMsg
  int 0x80
  mov eax,1
  mov ebx,1
  int 0x80
section .data
_sizebim dd 0
_addrbim dd 0
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
ErrMsg: db '[INTERNAL_ERROR]',10,''
LenErrMsg equ $-ErrMsg
_M1: db '227DAAF754ED6AE027534ACEC12A8455894A8FEC565A8'
_LM1 equ $-_M1
_M2: db  'z = '
_LM2 equ $-_M2
_M3: db '1ffffffffffffffffffffff'
_LM3 equ $-_M3
_M4: db  'm = '
_LM4 equ $-_M4
_M5: db  'z/m = '
_LM5 equ $-_M5
_M6: db  'z;m = '
_LM6 equ $-_M6
_M7: db  '',10,''
_LM7 equ $-_M7
