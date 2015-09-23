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
  mov ebp,edx
  call test
  mov edx,esp
  pop ebp
  add esp,1420
  ret
test:
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
  mov byte[ebp+125],0
  mov ebx,[ebp+1416]
  mov [ebp+236],ebx
  mov [ebp+636],dword 400
  add [ebp+1416],dword 400
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
  mov [edx+36],dword 0
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
  call big_int_input
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1024]
  mov [ebp+1024],eax
  mov eax,[edx+44]
  mov [ebp+36],eax
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
  mov al,[ebp+122]
  mov [edx+121],al
  mov eax,[ebp+224]
  mov [edx+220],eax
  mov eax,[ebp+624]
  mov [edx+620],eax
  mov eax,[ebp+1024]
  mov [edx+1020],eax
  mov ebp,edx
  call print_big_hex
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
  mov ebp,edx
  call print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
  xor eax,eax
  mov [ebp+1020],eax
  add [ebp+1020],dword _LM4
  mov ebx,[ebp+620]
  cmp [ebp+1020],ebx
  ja _errend
  mov ecx,_LM4
  mov esi,_M4
  mov edi,[ebp+220]
  add edi,[ebp+1020]
  sub edi,_LM4
  cld
  rep movsb
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+125]
  mov [edx+122],al
  mov eax,[ebp+236]
  mov [edx+224],eax
  mov eax,[ebp+636]
  mov [edx+624],eax
  mov eax,[ebp+1036]
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
  mov al,[ebp+125]
  mov [edx+122],al
  mov eax,[ebp+236]
  mov [edx+224],eax
  mov eax,[ebp+636]
  mov [edx+624],eax
  mov eax,[ebp+1036]
  mov [edx+1024],eax
  mov ebp,edx
  call big_int_input
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1024]
  mov [ebp+1036],eax
  mov eax,[edx+44]
  mov [ebp+36],eax
  mov eax,4
  mov ebx,1
  mov ecx,_M5
  mov edx,_LM5
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+125]
  mov [edx+121],al
  mov eax,[ebp+236]
  mov [edx+220],eax
  mov eax,[ebp+636]
  mov [edx+620],eax
  mov eax,[ebp+1036]
  mov [edx+1020],eax
  mov ebp,edx
  call print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[ebp+1024]
  add eax,[ebp+1028]
  add eax,1
  mov [ebp+48],eax
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
  mov eax,[ebp+48]
  mov [edx+56],eax
  mov al,[ebp+123]
  mov [edx+121],al
  mov eax,[ebp+228]
  mov [edx+220],eax
  mov eax,[ebp+628]
  mov [edx+620],eax
  mov eax,[ebp+1028]
  mov [edx+1020],eax
  mov ebp,edx
  call optimize
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1020]
  mov [ebp+1028],eax
  mov ecx,[ebp+1028]
  mov [ebp+112],ecx
  mov esi,[ebp+228]
  mov edi,ebp
  sub edi,64
.M1:
  mov eax,[esi]
  mov [edi],eax
  add esi,4
  sub edi,4
  loop .M1
  push eax
  push ebx
  push ecx
  push edx
  push edi
  push esi
  mov edx,[ebp+112]
  mov ecx,edx
  inc edx
  mov ebx,edx
  shl edx,2
  mov esi,ebp
  sub esi,64
  sub esi,edx
  mov edx,esi
  mov edi,ebp
  sub edi,64
.M2:
  mov eax,[edi]
  mov [esi],eax
  sub esi,4
  sub edi,4
  loop .M2
  mov ecx,ebx
  mov edi,ebp
  sub edi,64
  xor eax,eax
.M3:
 mov [edi],eax
  sub edi,4
  loop .M3
  mov ecx,[ebp+112]
  mov edi,ebp
  sub edi,64
  mov esi,edx
.M4:
 mov ebx,[esi]
  push edi
  push esi
  push ecx
  mov eax,ecx
  inc eax
  push eax
  mov ecx,[ebp+1024]
  mov esi,[ebp+224]
.M5:
  mov eax,[esi]
  mul ebx
  add [edi],eax
  pop eax
  dec eax
  push eax
  inc eax
  dec eax
  jz .M7
  adc [edi-4],edx
  dec eax
  jz .M6
  adc [edi-8], dword 0
.M6:
  add esi,4
  sub edi,4
  dec ecx
  jnz .M5
.M7:
  pop ecx
  pop ecx
  pop esi
  pop edi
  sub edi,4
  sub esi,4
  loop .M4
  mov eax,[ebp+112]
  mov edi,ebp
  sub edi,64
  shl eax,2
  sub edi,eax
  mov ebx,[edi]
  mov [ebp+108],ebx
  pop esi
  pop edi
  pop edx
  pop ecx
  pop ebx
  pop eax
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+3*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+3*4]
  shr ecx,2
.M8:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M8
  mov ecx,[ebp+112]
  mov [ebp+1020+3*4],ecx
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
  mov al,[ebp+124]
  mov [edx+121],al
  mov eax,[ebp+232]
  mov [edx+220],eax
  mov eax,[ebp+632]
  mov [edx+620],eax
  mov eax,[ebp+1032]
  mov [edx+1020],eax
  mov ebp,edx
  call print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
  mov ecx,[ebp+1032]
  mov [ebp+112],ecx
  mov esi,[ebp+232]
  mov edi,ebp
  sub edi,64
.M9:
  mov eax,[esi]
  mov [edi],eax
  add esi,4
  sub edi,4
  loop .M9
  push eax
  push ebx
  push ecx
  push edx
  push edi
  push esi
  mov ecx,[ebp+112]
  mov eax, [ebp + 1036]
  mov edx,eax
  dec edx
  shl edx,2
  xor ebx,ebx
  mov edi,[ebp+ 236]
  add edi,edx
.M10:
  cmp [edi],ebx
  jne .M11
  sub edi,4
  dec eax
  jnz .M10
  jmp .M39
.M11:
  mov [ebp + 1036],eax
  cmp [ebp+112],eax
  jae .M_11
  jmp .M38
.M_11:
  cmp eax,1
  jg .M12
  sub ecx,eax
  inc ecx
  mov ebx,ecx
  dec ebx
  shl ebx,2
  mov esi,ebp
  sub esi,64
  sub esi,ebx
  xor edx,edx
  mov edi,[ebp + 236]
  mov ebx,[edi]
.M13:
  mov eax,[esi]
  div ebx
  mov [esi],eax
  add esi,4
  dec ecx
  jnz .M13
  mov [esi-4],edx
  mov ecx,1
  jmp  .M38
.M12:
  mov ecx,[ebp + 1036]
  dec ecx
  shl ecx,2
  mov esi,[ebp +236]
  add esi,ecx
  mov ebx,[esi]
  inc ebx
  mov eax,1
  cmp ebx,80000000h
  jae .M14
  mov edx,1
  xor eax,eax
  div ebx
.M14:
  mov ebx,eax
  push ebx
  mov eax,2
  mov edi,ebp
  sub edi,64
  mov esi, edi
  mov ecx, [ebp + 112]
  mov edx, ecx
  shl edx, 2
  sub esi, edx
  push esi
.M15:
  push eax
  push ecx
  inc ecx
  xor edx,edx
  push esi
.M16:
  mov [esi],edx
  sub esi,4
  loop .M16
  pop esi
  pop ecx
.M17:
  mov eax,[edi]
  mul ebx
  add [esi],eax
  adc [esi-4],edx
  adc [esi-8],dword 0
  pop eax
  cmp eax,1
  jne .M_17
  add edi,4
  jmp .MM_17
.M_17:
  sub edi,4
.MM_17:
  push eax
  sub esi,4
  dec ecx
  jnz .M17
  pop eax
  push esi
  cmp eax,1
  je .M18
  sub esi,4
  mov edi,[ebp+236]
  mov ecx,[ebp + 1036]
  dec eax
  jnz .M15
.M18:
  inc dword [ebp+112]
  mov ecx,[ebp+112]
  sub ecx,[ebp + 1036]
  mov eax,ecx
  dec ecx
  shl ecx,2
  mov edi,ebp
 sub edi,64
  sub edi,ecx
  pop edx
  add edx,4
  pop ecx
  push eax
  push edi
  push eax
  push edi
  push ecx
  push edx
.M19:
  pop esi
  pop edi
  push edi
  push esi
  mov ecx,[ebp + 1036]
  mov edx,[edi]
  mov eax,[edi+4]
  mov ebx,[esi]
  cmp edx,ebx
  jne .M20
  mov ebx,-1
  push ebx
  jmp .M21
.M20:
  div ebx
  mov ebx,eax
  push ebx
  cmp ebx,0
  jz .M34
.M21:
  mov ecx,3
  xor eax,eax
  pop ebx
  pop edi
  push edi
  push ebx
  sub edi,4
  push edi
.M22:
  mov [edi],eax
  sub edi,4
  loop .M22
  pop edi
  mov eax,[esi+4]
  mul ebx
  mov [edi],eax
  add [edi-4],edx
  adc[edi-8],dword 0
  mov eax,[esi]
  mul ebx
  add [edi-4],eax
  adc [edi-8],dword 0
  add [edi-8],edx
  adc [edi-12],dword 0
  pop ebx
  pop edx
  pop esi
  push esi
  push edx
  add esi,8
.M23:
  push esi
  push edi
  push ebx
  mov ecx,3
  xor edx,edx
.M24:
  mov eax,[esi]
  cmp edx,0
  jz .M25
  xor edx,edx
  stc
.M25:
  mov ebx,[edi]
  sbb eax,ebx
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M24
  cmp edx,0
  jnz .M26
  pop ebx
  pop eax
  pop eax
  push ebx
  jmp .M29
.M26:
  pop ebx
  dec ebx
  jnz .M40
  pop eax
  pop eax
  push ebx
  jmp .M34
.M40:
  push ebx
  mov ecx,[ebp + 1036]
  pop ebx
  pop edi
  pop eax
  pop esi
  push esi
  push eax
  push edi
  push ebx
  add esi,4
  mov ecx,2
  xor edx,edx
.M27:
  cmp edx,0
  jz .M28
  xor edx,edx
  stc
.M28:
  mov eax,[edi]
  mov ebx,[esi]
  sbb eax,ebx
  adc edx,0
  mov [edi],eax
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M27
  sub [edi],edx
  pop ebx
  pop edi
  pop esi
  jmp .M23
.M29:
  pop ebx
  pop esi
  push esi
  push ebx
  sub esi,4
  mov ecx, [ebp + 1036]
  mov edx,ecx
  inc ecx
  xor eax,eax
  push esi
.M30:
  mov [esi],eax
  sub esi,4
  loop .M30
  pop esi
  mov ecx,edx
  pop ebx
  pop edi
  push edi
  push ebx
  dec edx
  shl edx,2
  add edi,edx
.M31:
  xor edx,edx
  mov eax,[edi]
  mul ebx
  add [esi],eax
  adc [esi-4],dword 0
  add [esi-4],edx
  adc [esi-8],dword 0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M31
  pop ebx
  pop edi
  pop esi
  push esi
  push edi
  push ebx
  mov eax, [ebp + 1036]
  mov ecx,eax
  shl eax,2
  add esi,eax
  sub edi,4
  inc ecx
  xor edx,edx
  push edi
  push esi
.M32:
  mov eax,[esi]
  cmp edx,0
  jz  .M33
  xor edx,edx
  stc
.M33:
  mov ebx,[edi]
  sbb eax,ebx
  mov [esi],eax
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M32
  pop esi
  pop edi
  cmp edx,0
  je .M34
  pop ebx
  dec ebx
  push ebx
  push edi
  mov ecx,[ebp + 1036]
  mov edx,ecx
.M43:
  mov eax,[esi]
  add eax,[edi]
  mov [esi],eax
  adc [edi-4],dword 0
  sub edi,4
  sub esi,4
  loop .M43
  pop esi
  xor eax,eax
  mov ecx,edx
  inc ecx
  push esi
  jmp .M30
.M34:
  pop ebx
  pop eax
  pop edx
  add edx,4
  pop edi
  pop ecx
  mov [edi],ebx
  add edi,4
  dec dword [ebp+112]
  dec ecx
  push ecx
  push edi
  push edx
  push eax
  jnz .M19
.M35:
  pop eax
  pop esi
  pop eax
  pop eax
.M36:
  pop edi
  pop eax
  pop edi
  pop ebx
  mov ecx,edi
  sub ecx,esi
  mov edi,ebp
  sub edi,64
  sub edi,ecx
  shr ecx,2
  inc ecx
  push edi
  push ecx
  xor edx,edx
.M41:
  mov eax,[esi]
  div ebx
  mov [edi],eax
  add edi,4
  add esi,4
  dec ecx
  jnz .M41
  pop ecx
  pop edi
  xor edx,edx
.M42:
  cmp [edi],edx
  jnz .M38
  add edi,4
  dec ecx
  jnz .M42
  mov ecx,1
.M38:
  mov [ebp+112],ecx
.M39:
  pop esi
  pop edi
  pop edx
  pop ecx
  pop ebx
  pop eax
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+3*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+3*4]
  shr ecx,2
.M46:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M46
  mov ecx,[ebp+112]
  mov [ebp+1020+3*4],ecx
  mov eax,4
  mov ebx,1
  mov ecx,_M7
  mov edx,_LM7
  int 0x80
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+124]
  mov [edx+121],al
  mov eax,[ebp+232]
  mov [edx+220],eax
  mov eax,[ebp+632]
  mov [edx+620],eax
  mov eax,[ebp+1032]
  mov [edx+1020],eax
  mov ebp,edx
  call print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
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
  mov [ebp+24],eax
  mov eax,4
  mov [ebp+76],eax
  mov eax,[ebp+1020]
  sub eax,1
  mov [ebp+40],eax
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
  mov eax,16
  shl eax,byte 1
  sub eax,[ebp+76]
  mov [ebp+80],eax
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov eax,[ebx]
  mov cl,[ebp+80]
  shr eax,cl
  mov [ebp+96],eax
  mov eax,[ebp+96]
  and eax,[ebp+100]
  mov [ebp+96],eax
  mov eax,[ebp+76]
  add eax,4
  mov [ebp+76],eax
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
  mov edx,eax
  mov eax,0
  cmp edx,eax
  je .P5
  mov eax,4
  mov [ebp+76],eax
  mov eax,[ebp+40]
  dec eax
  mov [ebp+40],eax
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
  mov ecx,_M11
  mov edx,_LM11
  int 0x80
.P6:
  ret
optimize:
  mov eax,[ebp+1020]
  mov [ebp+36],eax
  mov eax,[ebp+56]
  mov [ebp+1020],eax
.P1:
  mov eax,[ebp+36]
  mov edx,eax
  mov eax,[ebp+56]
  cmp edx,eax
  ja .P2
  xor eax,eax
  mov ebx,[ebp+36]
  shl ebx,byte 2
  add ebx,[ebp+220]
  mov [ebx],eax
  mov eax,[ebp+36]
  inc eax
  mov [ebp+36],eax
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
_M1: db '0x136D49B73FB874345ADC506 0x1C681D5039DB64C1E40B99C'
_LM1 equ $-_M1
_M2: db  'z = '
_LM2 equ $-_M2
_M3: db  'q = '
_LM3 equ $-_M3
_M4: db '0x1ffffffffffffffffffffff'
_LM4 equ $-_M4
_M5: db  'm = '
_LM5 equ $-_M5
_M6: db  'q*z = '
_LM6 equ $-_M6
_M7: db  'q*z%m = '
_LM7 equ $-_M7
_M8: db  'ОШИБКА: Символьный комплекс пустой',10,''
_LM8 equ $-_M8
_M9: db  'ОШИБКА: Число не шестнадцатеричное',10,''
_LM9 equ $-_M9
_M10: db  'ОШИБКА: Символьный комплекс закончился.',10,''
_LM10 equ $-_M10
_M11: db  '',10,''
_LM11 equ $-_M11
