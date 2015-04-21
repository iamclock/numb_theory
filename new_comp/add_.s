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
  mov byte[ebp+122],0
  mov ebx,[ebp+1416]
  mov [ebp+224],ebx
  mov [ebp+624],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1024],dword 0
  call _addmem
  mov byte[ebp+123],1
  mov ebx,[ebp+1416]
  mov [ebp+228],ebx
  mov [ebp+628],dword 100
  add [ebp+1416],dword 100
  mov [ebp+1028],dword 0
  call _addmem
  mov eax,3
  mov ebx,0
  mov ecx,[ebp+228]
  add ecx, [ebp+1028]
  mov edx,[ebp+628]
  int 0x80
  dec eax
  add [ebp+1028],eax
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+121]
  mov [edx+122],al
  mov eax,[ebp+220]
  mov [edx+224],eax
  mov eax,[ebp+620]
  mov [edx+624],eax
  mov eax,[ebp+1020]
  mov [edx+1024],eax
  mov al,[ebp+123]
  mov [edx+121],al
  mov eax,[ebp+228]
  mov [edx+220],eax
  mov eax,[ebp+628]
  mov [edx+620],eax
  mov eax,[ebp+1028]
  mov [edx+1020],eax
  mov [edx+36],dword 0
  mov al,[ebp+121]
  mov [edx+122],al
  mov eax,[ebp+220]
  mov [edx+224],eax
  mov eax,[ebp+620]
  mov [edx+624],eax
  mov eax,[ebp+1020]
  mov [edx+1024],eax
  mov ebp,edx
  call second_big_int_input
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1024]
  mov [ebp+1020],eax
  mov eax,[edx+36]
  mov [ebp+36],eax
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
  mov ebp,edx
  call second_print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
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
  mov al,[ebp+123]
  mov [edx+121],al
  mov eax,[ebp+228]
  mov [edx+220],eax
  mov eax,[ebp+628]
  mov [edx+620],eax
  mov eax,[ebp+1028]
  mov [edx+1020],eax
  mov eax,[ebp+36]
  mov [edx+36],eax
  mov al,[ebp+122]
  mov [edx+122],al
  mov eax,[ebp+224]
  mov [edx+224],eax
  mov eax,[ebp+624]
  mov [edx+624],eax
  mov eax,[ebp+1024]
  mov [edx+1024],eax
  mov ebp,edx
  call second_big_int_input
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1024]
  mov [ebp+1024],eax
  mov eax,[edx+36]
  mov [ebp+36],eax
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
  mov ebp,edx
  call second_print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
  mov ecx,[ebp+1020]
  mov [ebp+112],ecx
  mov esi,[ebp+220]
  mov edi,ebp
  sub edi,64
.M1:
  mov eax,[esi]
  mov [edi],eax
  add esi,4
  sub edi,4
  loop .M1
  mov esi,ebp
  sub esi,64
  mov edi,[ebp+224]
  mov ecx,[ebp+112]
  cmp ecx,[ebp+1024]
  jbe .M2
  mov ecx,[ebp+1024]
.M2:
  mov eax,[edi]
  adc [esi],eax
  dec esi
  dec esi
  dec esi
  dec esi
  inc edi
  inc edi
  inc edi
  inc edi
  loop .M2
.M3:
  jnc .M4
  adc [esi],dword 0
  dec esi
  dec esi
  dec esi
  dec esi
  jc .M3
.M4:
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+0*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+0*4]
  shr ecx,2
.M5:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M5
  mov ecx,[ebp+112]
  mov [ebp+1020+0*4],ecx
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
  mov ebp,edx
  call print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
  ret
second_big_int_input:
  xor eax,eax
  mov [ebp+40],eax
  xor eax,eax
  mov [ebp+48],eax
  mov eax,[ebp+1020]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P6
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
.P10:
  mov ebx,[ebp+48]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,10
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
  mov eax,[ebp+48]
  inc eax
  mov [ebp+48],eax
  jmp .P10
.P11:
  mov eax,[ebp+48]
  sub eax,[ebp+36]
  mov [ebp+48],eax
  mov eax,[ebp+48]
  mov ebx,8
  xor edx,edx
  div ebx
  mov [ebp+108],edx
  mov [ebp+80],eax
  mov eax,[ebp+80]
  mov [ebp+1024],eax
  mov eax,[ebp+48]
  mov ebx,8
  xor edx,edx
  div ebx
  mov [ebp+108],eax
  mov eax,edx
  mov [ebp+80],eax
  mov eax,[ebp+1024]
  sub eax,1
  mov [ebp+48],eax
  mov eax,[ebp+80]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P1
  mov eax,[ebp+48]
  inc eax
  mov [ebp+48],eax
  mov eax,[ebp+48]
  add eax,1
  mov [ebp+1024],eax
.P1:
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,10
  cmp edx,eax
  je .P8
  mov ebx,[ebp+36]
  add ebx,[ebp+220]
  mov ebx,[ebx]
  and ebx,0x000000ff
  mov eax,ebx
  mov edx,eax
  mov eax,32
  cmp edx,eax
  je .P8
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
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  or eax,[ebp+96]
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
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
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  or eax,[ebp+96]
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
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
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  or eax,[ebp+96]
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
.P4:
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,[ebp+1020]
  cmp edx,eax
  jae .P8
  mov eax,[ebp+40]
  inc eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax,8
  cmp edx,eax
  jae .P5
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  shl eax,byte 4
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
  jmp .P1
.P5:
  mov eax,[ebp+48]
  dec eax
  mov [ebp+48],eax
  xor eax,eax
  mov [ebp+40],eax
  jmp .P1
.P6:
  mov eax,4
  mov ebx,1
  mov ecx,_M1
  mov edx,_LM1
  int 0x80
  jmp .P8
.P7:
  mov eax,4
  mov ebx,1
  mov ecx,_M2
  mov edx,_LM2
  int 0x80
  xor eax,eax
  mov [ebp+1024],eax
.P8:
  mov eax,8
  sub eax,[ebp+40]
  sub eax,1
  mov [ebp+40],eax
  mov eax,[ebp+40]
  shl eax,byte 2
  mov [ebp+40],eax
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  mov cl,[ebp+40]
  shl eax,cl
  mov ebx,[ebp+48]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov [ebx],eax
.P9:
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  ret
second_print_big_hex:
  mov byte[ebp+122],1
  mov ebx,[ebp+1416]
  mov [ebp+224],ebx
  mov [ebp+624],dword 100
  add [ebp+1416],dword 100
  mov [ebp+1024],dword 0
  call _addmem
  mov eax,[ebp+1020]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P6
  xor eax,eax
  mov [ebp+36],eax
  mov eax,[ebp+1020]
  sub eax,1
  mov [ebp+40],eax
  xor eax,eax
  mov [ebp+24],eax
  mov eax,15
  mov [ebp+100],eax
  mov eax,48
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
  mov eax,120
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
.P1:
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,8
  cmp edx,eax
  jae .P4
  mov eax,[ebp+36]
  add eax,1
  mov edx,4
  mul edx
  mov [ebp+108],edx
  mov [ebp+76],eax
  mov eax,16
  shl eax,byte 1
  sub eax,[ebp+76]
  mov [ebp+76],eax
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  mov cl,[ebp+76]
  shr eax,cl
  mov [ebp+96],eax
  mov eax,[ebp+96]
  and eax,[ebp+100]
  mov [ebp+96],eax
  mov eax,[ebp+96]
  and eax,eax
  jz .P2
  mov eax,1
  mov [ebp+24],eax
.P2:
  mov eax,[ebp+96]
  mov edx,eax
  mov eax,10
  cmp edx,eax
  jb .P3
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+96]
  sub eax,10
  add eax,65
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
  jmp .P1
.P3:
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+24]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P1
  mov eax,[ebp+96]
  add eax,48
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
  jmp .P1
.P4:
  mov eax,[ebp+40]
  dec eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax,[ebp+1020]
  cmp edx,eax
  jae .P5
  xor eax,eax
  mov [ebp+36],eax
  jmp .P1
.P5:
  mov eax,4
  mov ebx,1
  mov ecx,[ebp+224]
  mov edx,[ebp+1024]
  int 0x80
  mov eax,4
  mov ebx,1
  mov ecx,_M3
  mov edx,_LM3
  int 0x80
.P6:
  ret
print_big_hex:
  mov byte[ebp+122],1
  mov ebx,[ebp+1416]
  mov [ebp+224],ebx
  mov [ebp+624],dword 100
  add [ebp+1416],dword 100
  mov [ebp+1024],dword 0
  call _addmem
  mov eax,[ebp+1020]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P6
  xor eax,eax
  mov [ebp+36],eax
  xor eax,eax
  mov [ebp+40],eax
  xor eax,eax
  mov [ebp+24],eax
  mov eax,15
  mov [ebp+100],eax
  mov eax,48
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
  mov eax,120
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
.P1:
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,8
  cmp edx,eax
  jae .P4
  mov eax,[ebp+36]
  add eax,1
  mov edx,4
  mul edx
  mov [ebp+108],edx
  mov [ebp+76],eax
  mov eax,16
  shl eax,byte 1
  sub eax,[ebp+76]
  mov [ebp+76],eax
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  mov cl,[ebp+76]
  shr eax,cl
  mov [ebp+96],eax
  mov eax,[ebp+96]
  and eax,[ebp+100]
  mov [ebp+96],eax
  mov eax,[ebp+96]
  and eax,eax
  jz .P2
  mov eax,1
  mov [ebp+24],eax
.P2:
  mov eax,[ebp+96]
  mov edx,eax
  mov eax,10
  cmp edx,eax
  jb .P3
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+96]
  sub eax,10
  add eax,65
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
  jmp .P1
.P3:
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
  mov eax,[ebp+24]
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P1
  mov eax,[ebp+96]
  add eax,48
  mov ebx,[ebp+1024]
  mov ecx,[ebp+1024]
  cmp ecx,[ebp+624]
  jae _errend
  mov edi,ecx
  add edi,[ebp+224]
  mov esi,edi
  dec esi
  sub ecx,ebx
  std
  rep movsb
  add ebx,[ebp+224]
  mov [ebx],al
  inc dword [ebp+1024]
  jmp .P1
.P4:
  mov eax,[ebp+40]
  inc eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax,[ebp+1020]
  cmp edx,eax
  jae .P5
  xor eax,eax
  mov [ebp+36],eax
  jmp .P1
.P5:
  mov eax,4
  mov ebx,1
  mov ecx,[ebp+224]
  mov edx,[ebp+1024]
  int 0x80
  mov eax,4
  mov ebx,1
  mov ecx,_M4
  mov edx,_LM4
  int 0x80
.P6:
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
_M1: db  'F1 is empty',10,''
_LM1 equ $-_M1
_M2: db  'ERROR: Not hexadecimal number',10,''
_LM2 equ $-_M2
_M3: db  '',10,''
_LM3 equ $-_M3
_M4: db  '',10,''
_LM4 equ $-_M4
