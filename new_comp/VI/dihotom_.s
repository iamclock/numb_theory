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
  mov [ebp+620],dword 200
  add [ebp+1416],dword 200
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
  xor eax,eax
  mov [ebp+36],eax
.P1:
  mov ecx,[ebp+1024]
  mov [ebp+112],ecx
  mov esi,[ebp+224]
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
  mov ecx,[ebp+112]
  mov eax, [ebp + 1028]
  mov edx,eax
  dec edx
  shl edx,2
  xor ebx,ebx
  mov edi,[ebp+ 228]
  add edi,edx
.M2:
  cmp [edi],ebx
  jne .M3
  sub edi,4
  dec eax
  jnz .M2
  jmp .M31
.M3:
  mov [ebp + 1028],eax
  cmp [ebp+112],eax
  jae .M_3
  jmp .M30
.M_3:
  cmp eax,1
  jg .M4
  sub ecx,eax
  inc ecx
  mov ebx,ecx
  dec ebx
  shl ebx,2
  mov esi,ebp
  sub esi,64
  sub esi,ebx
  xor edx,edx
  mov edi,[ebp + 228]
  mov ebx,[edi]
.M5:
  mov eax,[esi]
  div ebx
  mov [esi],eax
  add esi,4
  dec ecx
  jnz .M5
  mov [esi-4],edx
  mov ecx,1
  jmp  .M30
.M4:
  mov ecx,[ebp + 1028]
  dec ecx
  shl ecx,2
  mov esi,[ebp +228]
  add esi,ecx
  mov ebx,[esi]
  inc ebx
  mov eax,1
  cmp ebx,80000000h
  jae .M6
  mov edx,1
  xor eax,eax
  div ebx
.M6:
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
.M7:
  push eax
  push ecx
  inc ecx
  xor edx,edx
  push esi
.M8:
  mov [esi],edx
  sub esi,4
  loop .M8
  pop esi
  pop ecx
.M9:
  mov eax,[edi]
  mul ebx
  add [esi],eax
  adc [esi-4],edx
  adc [esi-8],dword 0
  pop eax
  cmp eax,1
  jne .M_9
  add edi,4
  jmp .MM_9
.M_9:
  sub edi,4
.MM_9:
  push eax
  sub esi,4
  dec ecx
  jnz .M9
  pop eax
  push esi
  cmp eax,1
  je .M10
  sub esi,4
  mov edi,[ebp+228]
  mov ecx,[ebp + 1028]
  dec eax
  jnz .M7
.M10:
  inc dword [ebp+112]
  mov ecx,[ebp+112]
  sub ecx,[ebp + 1028]
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
.M11:
  pop esi
  pop edi
  push edi
  push esi
  mov ecx,[ebp + 1028]
  mov edx,[edi]
  mov eax,[edi+4]
  mov ebx,[esi]
  cmp edx,ebx
  jne .M12
  mov ebx,-1
  push ebx
  jmp .M13
.M12:
  div ebx
  mov ebx,eax
  push ebx
  cmp ebx,0
  jz .M26
.M13:
  mov ecx,3
  xor eax,eax
  pop ebx
  pop edi
  push edi
  push ebx
  sub edi,4
  push edi
.M14:
  mov [edi],eax
  sub edi,4
  loop .M14
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
.M15:
  push esi
  push edi
  push ebx
  mov ecx,3
  xor edx,edx
.M16:
  mov eax,[esi]
  cmp edx,0
  jz .M17
  xor edx,edx
  stc
.M17:
  mov ebx,[edi]
  sbb eax,ebx
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M16
  cmp edx,0
  jnz .M18
  pop ebx
  pop eax
  pop eax
  push ebx
  jmp .M21
.M18:
  pop ebx
  dec ebx
  jnz .M32
  pop eax
  pop eax
  push ebx
  jmp .M26
.M32:
  push ebx
  mov ecx,[ebp + 1028]
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
.M19:
  cmp edx,0
  jz .M20
  xor edx,edx
  stc
.M20:
  mov eax,[edi]
  mov ebx,[esi]
  sbb eax,ebx
  adc edx,0
  mov [edi],eax
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M19
  sub [edi],edx
  pop ebx
  pop edi
  pop esi
  jmp .M15
.M21:
  pop ebx
  pop esi
  push esi
  push ebx
  sub esi,4
  mov ecx, [ebp + 1028]
  mov edx,ecx
  inc ecx
  xor eax,eax
  push esi
.M22:
  mov [esi],eax
  sub esi,4
  loop .M22
  pop esi
  mov ecx,edx
  pop ebx
  pop edi
  push edi
  push ebx
  dec edx
  shl edx,2
  add edi,edx
.M23:
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
  jnz .M23
  pop ebx
  pop edi
  pop esi
  push esi
  push edi
  push ebx
  mov eax, [ebp + 1028]
  mov ecx,eax
  shl eax,2
  add esi,eax
  sub edi,4
  inc ecx
  xor edx,edx
  push edi
  push esi
.M24:
  mov eax,[esi]
  cmp edx,0
  jz  .M25
  xor edx,edx
  stc
.M25:
  mov ebx,[edi]
  sbb eax,ebx
  mov [esi],eax
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M24
  pop esi
  pop edi
  cmp edx,0
  je .M26
  pop ebx
  dec ebx
  push ebx
  push edi
  mov ecx,[ebp + 1028]
  mov edx,ecx
.M35:
  mov eax,[esi]
  add eax,[edi]
  mov [esi],eax
  adc [edi-4],dword 0
  sub edi,4
  sub esi,4
  loop .M35
  pop esi
  xor eax,eax
  mov ecx,edx
  inc ecx
  push esi
  jmp .M22
.M26:
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
  jnz .M11
.M27:
  pop eax
  pop esi
  pop eax
  pop eax
.M28:
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
.M33:
  mov eax,[esi]
  div ebx
  mov [edi],eax
  add edi,4
  add esi,4
  dec ecx
  jnz .M33
  pop ecx
  pop edi
  xor edx,edx
.M34:
  cmp [edi],edx
  jnz .M30
  add edi,4
  dec ecx
  jnz .M34
  mov ecx,1
.M30:
  mov [ebp+112],ecx
.M31:
  pop esi
  pop edi
  pop edx
  pop ecx
  pop ebx
  pop eax
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+1*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+1*4]
  shr ecx,2
.M38:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M38
  mov ecx,[ebp+112]
  mov [ebp+1020+1*4],ecx
  mov eax,[ebp+36]
  inc eax
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
  mov al,[ebp+123]
  mov [edx+122],al
  mov eax,[ebp+228]
  mov [edx+224],eax
  mov eax,[ebp+628]
  mov [edx+624],eax
  mov eax,[ebp+1028]
  mov [edx+1024],eax
  mov al,[ebp+123]
  mov [edx+123],al
  mov eax,[ebp+228]
  mov [edx+228],eax
  mov eax,[ebp+628]
  mov [edx+628],eax
  mov eax,[ebp+1028]
  mov [edx+1028],eax
  mov al,[ebp+125]
  mov [edx+125],al
  mov eax,[ebp+236]
  mov [edx+236],eax
  mov eax,[ebp+636]
  mov [edx+636],eax
  mov eax,[ebp+1036]
  mov [edx+1036],eax
  mov ebp,edx
  call dihotom_big_int
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1036]
  mov [ebp+1036],eax
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
  mov eax,[ebp+36]
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
  mov ecx,_M4
  mov edx,_LM4
  int 0x80
  jmp .P9
.P7:
  mov eax,4
  mov ebx,1
  mov ecx,_M5
  mov edx,_LM5
  int 0x80
  xor eax,eax
  mov [ebp+1024],eax
  jmp .P9
.P8:
  mov eax,4
  mov ebx,1
  mov ecx,_M6
  mov edx,_LM6
  int 0x80
  xor eax,eax
  mov [ebp+1024],eax
.P9:
  ret
dihotom_big_int:
  mov byte[ebp+126],0
  mov ebx,[ebp+1416]
  mov [ebp+240],ebx
  mov [ebp+640],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1040],dword 0
  call _addmem
  mov byte[ebp+124],0
  mov ebx,[ebp+1416]
  mov [ebp+232],ebx
  mov [ebp+632],dword 400
  add [ebp+1416],dword 400
  mov [ebp+1032],dword 0
  call _addmem
  mov eax,1
  mov [ebp+1036],eax
  mov [ebp+1040],eax
  mov [ebp+1032],eax
  mov ebx,[ebp+232]
  mov [ebx+0],eax
  xor eax,eax
  mov [ebp+40],eax
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
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+5*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+5*4]
  shr ecx,2
.M2:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M2
  mov ecx,[ebp+112]
  mov [ebp+1020+5*4],ecx
  mov eax,1
  mov ebx,[ebp+236]
  mov [ebx+0],eax
  mov [ebp+36],eax
  mov [ebp+76],eax
  mov eax,[ebp+36]
  shl eax,byte 1
  mov [ebp+36],eax
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+224]
  mov eax,[ebx]
  and eax,1
  and eax,eax
  jz .P3
  mov ecx,[ebp+1020]
  mov [ebp+112],ecx
  mov esi,[ebp+220]
  mov edi,ebp
  sub edi,64
.M3:
  mov eax,[esi]
  mov [edi],eax
  add esi,4
  sub edi,4
  loop .M3
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+4*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+4*4]
  shr ecx,2
.M4:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M4
  mov ecx,[ebp+112]
  mov [ebp+1020+4*4],ecx
.P3:
  mov eax,[ebp+76]
  mov edx,eax
  mov eax,32
  cmp edx,eax
  jae .P4
  mov eax,[ebp+1040]
  add eax,[ebp+1040]
  add eax,1
  mov [ebp+48],eax
  sub esp,1420
  push ebp
  mov edx,esp
  mov ebx,[ebp+1416]
  mov [edx+1416],ebx
  mov al,[ebp+126]
  mov [edx+121],al
  mov eax,[ebp+240]
  mov [edx+220],eax
  mov eax,[ebp+640]
  mov [edx+620],eax
  mov eax,[ebp+1040]
  mov [edx+1020],eax
  mov eax,[ebp+48]
  mov [edx+56],eax
  mov al,[ebp+126]
  mov [edx+121],al
  mov eax,[ebp+240]
  mov [edx+220],eax
  mov eax,[ebp+640]
  mov [edx+620],eax
  mov eax,[ebp+1040]
  mov [edx+1020],eax
  mov ebp,edx
  call optimize
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1020]
  mov [ebp+1040],eax
  mov ecx,[ebp+1040]
  mov [ebp+112],ecx
  mov esi,[ebp+240]
  mov edi,ebp
  sub edi,64
.M5:
  mov eax,[esi]
  mov [edi],eax
  add esi,4
  sub edi,4
  loop .M5
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
.M6:
  mov eax,[edi]
  mov [esi],eax
  sub esi,4
  sub edi,4
  loop .M6
  mov ecx,ebx
  mov edi,ebp
  sub edi,64
  xor eax,eax
.M7:
 mov [edi],eax
  sub edi,4
  loop .M7
  mov ecx,[ebp+112]
  mov edi,ebp
  sub edi,64
  mov esi,edx
.M8:
 mov ebx,[esi]
  push edi
  push esi
  push ecx
  mov eax,ecx
  inc eax
  push eax
  mov ecx,[ebp+1040]
  mov esi,[ebp+240]
.M9:
  mov eax,[esi]
  mul ebx
  add [edi],eax
  pop eax
  dec eax
  push eax
  inc eax
  dec eax
  jz .M11
  adc [edi-4],edx
  dec eax
  jz .M10
  adc [edi-8], dword 0
.M10:
  add esi,4
  sub edi,4
  dec ecx
  jnz .M9
.M11:
  pop ecx
  pop ecx
  pop esi
  pop edi
  sub edi,4
  sub esi,4
  loop .M8
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
  push eax
  push ebx
  push ecx
  push edx
  push edi
  push esi
  mov ecx,[ebp+112]
  mov eax, [ebp + 1028]
  mov edx,eax
  dec edx
  shl edx,2
  xor ebx,ebx
  mov edi,[ebp+ 228]
  add edi,edx
.M12:
  cmp [edi],ebx
  jne .M13
  sub edi,4
  dec eax
  jnz .M12
  jmp .M41
.M13:
  mov [ebp + 1028],eax
  cmp [ebp+112],eax
  jae .M_13
  jmp .M40
.M_13:
  cmp eax,1
  jg .M14
  sub ecx,eax
  inc ecx
  mov ebx,ecx
  dec ebx
  shl ebx,2
  mov esi,ebp
  sub esi,64
  sub esi,ebx
  xor edx,edx
  mov edi,[ebp + 228]
  mov ebx,[edi]
.M15:
  mov eax,[esi]
  div ebx
  mov [esi],eax
  add esi,4
  dec ecx
  jnz .M15
  mov [esi-4],edx
  mov ecx,1
  jmp  .M40
.M14:
  mov ecx,[ebp + 1028]
  dec ecx
  shl ecx,2
  mov esi,[ebp +228]
  add esi,ecx
  mov ebx,[esi]
  inc ebx
  mov eax,1
  cmp ebx,80000000h
  jae .M16
  mov edx,1
  xor eax,eax
  div ebx
.M16:
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
.M17:
  push eax
  push ecx
  inc ecx
  xor edx,edx
  push esi
.M18:
  mov [esi],edx
  sub esi,4
  loop .M18
  pop esi
  pop ecx
.M19:
  mov eax,[edi]
  mul ebx
  add [esi],eax
  adc [esi-4],edx
  adc [esi-8],dword 0
  pop eax
  cmp eax,1
  jne .M_19
  add edi,4
  jmp .MM_19
.M_19:
  sub edi,4
.MM_19:
  push eax
  sub esi,4
  dec ecx
  jnz .M19
  pop eax
  push esi
  cmp eax,1
  je .M20
  sub esi,4
  mov edi,[ebp+228]
  mov ecx,[ebp + 1028]
  dec eax
  jnz .M17
.M20:
  inc dword [ebp+112]
  mov ecx,[ebp+112]
  sub ecx,[ebp + 1028]
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
.M21:
  pop esi
  pop edi
  push edi
  push esi
  mov ecx,[ebp + 1028]
  mov edx,[edi]
  mov eax,[edi+4]
  mov ebx,[esi]
  cmp edx,ebx
  jne .M22
  mov ebx,-1
  push ebx
  jmp .M23
.M22:
  div ebx
  mov ebx,eax
  push ebx
  cmp ebx,0
  jz .M36
.M23:
  mov ecx,3
  xor eax,eax
  pop ebx
  pop edi
  push edi
  push ebx
  sub edi,4
  push edi
.M24:
  mov [edi],eax
  sub edi,4
  loop .M24
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
.M25:
  push esi
  push edi
  push ebx
  mov ecx,3
  xor edx,edx
.M26:
  mov eax,[esi]
  cmp edx,0
  jz .M27
  xor edx,edx
  stc
.M27:
  mov ebx,[edi]
  sbb eax,ebx
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M26
  cmp edx,0
  jnz .M28
  pop ebx
  pop eax
  pop eax
  push ebx
  jmp .M31
.M28:
  pop ebx
  dec ebx
  jnz .M42
  pop eax
  pop eax
  push ebx
  jmp .M36
.M42:
  push ebx
  mov ecx,[ebp + 1028]
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
.M29:
  cmp edx,0
  jz .M30
  xor edx,edx
  stc
.M30:
  mov eax,[edi]
  mov ebx,[esi]
  sbb eax,ebx
  adc edx,0
  mov [edi],eax
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M29
  sub [edi],edx
  pop ebx
  pop edi
  pop esi
  jmp .M25
.M31:
  pop ebx
  pop esi
  push esi
  push ebx
  sub esi,4
  mov ecx, [ebp + 1028]
  mov edx,ecx
  inc ecx
  xor eax,eax
  push esi
.M32:
  mov [esi],eax
  sub esi,4
  loop .M32
  pop esi
  mov ecx,edx
  pop ebx
  pop edi
  push edi
  push ebx
  dec edx
  shl edx,2
  add edi,edx
.M33:
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
  jnz .M33
  pop ebx
  pop edi
  pop esi
  push esi
  push edi
  push ebx
  mov eax, [ebp + 1028]
  mov ecx,eax
  shl eax,2
  add esi,eax
  sub edi,4
  inc ecx
  xor edx,edx
  push edi
  push esi
.M34:
  mov eax,[esi]
  cmp edx,0
  jz  .M35
  xor edx,edx
  stc
.M35:
  mov ebx,[edi]
  sbb eax,ebx
  mov [esi],eax
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M34
  pop esi
  pop edi
  cmp edx,0
  je .M36
  pop ebx
  dec ebx
  push ebx
  push edi
  mov ecx,[ebp + 1028]
  mov edx,ecx
.M45:
  mov eax,[esi]
  add eax,[edi]
  mov [esi],eax
  adc [edi-4],dword 0
  sub edi,4
  sub esi,4
  loop .M45
  pop esi
  xor eax,eax
  mov ecx,edx
  inc ecx
  push esi
  jmp .M32
.M36:
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
  jnz .M21
.M37:
  pop eax
  pop esi
  pop eax
  pop eax
.M38:
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
.M43:
  mov eax,[esi]
  div ebx
  mov [edi],eax
  add edi,4
  add esi,4
  dec ecx
  jnz .M43
  pop ecx
  pop edi
  xor edx,edx
.M44:
  cmp [edi],edx
  jnz .M40
  add edi,4
  dec ecx
  jnz .M44
  mov ecx,1
.M40:
  mov [ebp+112],ecx
.M41:
  pop esi
  pop edi
  pop edx
  pop ecx
  pop ebx
  pop eax
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+5*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+5*4]
  shr ecx,2
.M48:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M48
  mov ecx,[ebp+112]
  mov [ebp+1020+5*4],ecx
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
  mov al,[ebp+126]
  mov [edx+121],al
  mov eax,[ebp+240]
  mov [edx+220],eax
  mov eax,[ebp+640]
  mov [edx+620],eax
  mov eax,[ebp+1040]
  mov [edx+1020],eax
  mov ebp,edx
  call print_big_hex
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[ebp+36]
  mov ebx,[ebp+40]
  shl ebx,byte 2
  add ebx,[ebp+224]
  and eax,[ebx]
  and eax,eax
  jz .P6
  mov eax,[ebp+1036]
  add eax,[ebp+1040]
  add eax,1
  mov [ebp+48],eax
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
  mov eax,[ebp+48]
  mov [edx+56],eax
  mov al,[ebp+125]
  mov [edx+121],al
  mov eax,[ebp+236]
  mov [edx+220],eax
  mov eax,[ebp+636]
  mov [edx+620],eax
  mov eax,[ebp+1036]
  mov [edx+1020],eax
  mov ebp,edx
  call optimize
  mov edx,esp
  pop ebp
  add esp,1420
  mov eax,[edx+1020]
  mov [ebp+1036],eax
  mov ecx,[ebp+1036]
  mov [ebp+112],ecx
  mov esi,[ebp+236]
  mov edi,ebp
  sub edi,64
.M49:
  mov eax,[esi]
  mov [edi],eax
  add esi,4
  sub edi,4
  loop .M49
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
.M50:
  mov eax,[edi]
  mov [esi],eax
  sub esi,4
  sub edi,4
  loop .M50
  mov ecx,ebx
  mov edi,ebp
  sub edi,64
  xor eax,eax
.M51:
 mov [edi],eax
  sub edi,4
  loop .M51
  mov ecx,[ebp+112]
  mov edi,ebp
  sub edi,64
  mov esi,edx
.M52:
 mov ebx,[esi]
  push edi
  push esi
  push ecx
  mov eax,ecx
  inc eax
  push eax
  mov ecx,[ebp+1040]
  mov esi,[ebp+240]
.M53:
  mov eax,[esi]
  mul ebx
  add [edi],eax
  pop eax
  dec eax
  push eax
  inc eax
  dec eax
  jz .M55
  adc [edi-4],edx
  dec eax
  jz .M54
  adc [edi-8], dword 0
.M54:
  add esi,4
  sub edi,4
  dec ecx
  jnz .M53
.M55:
  pop ecx
  pop ecx
  pop esi
  pop edi
  sub edi,4
  sub esi,4
  loop .M52
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
  push eax
  push ebx
  push ecx
  push edx
  push edi
  push esi
  mov ecx,[ebp+112]
  mov eax, [ebp + 1028]
  mov edx,eax
  dec edx
  shl edx,2
  xor ebx,ebx
  mov edi,[ebp+ 228]
  add edi,edx
.M56:
  cmp [edi],ebx
  jne .M57
  sub edi,4
  dec eax
  jnz .M56
  jmp .M85
.M57:
  mov [ebp + 1028],eax
  cmp [ebp+112],eax
  jae .M_57
  jmp .M84
.M_57:
  cmp eax,1
  jg .M58
  sub ecx,eax
  inc ecx
  mov ebx,ecx
  dec ebx
  shl ebx,2
  mov esi,ebp
  sub esi,64
  sub esi,ebx
  xor edx,edx
  mov edi,[ebp + 228]
  mov ebx,[edi]
.M59:
  mov eax,[esi]
  div ebx
  mov [esi],eax
  add esi,4
  dec ecx
  jnz .M59
  mov [esi-4],edx
  mov ecx,1
  jmp  .M84
.M58:
  mov ecx,[ebp + 1028]
  dec ecx
  shl ecx,2
  mov esi,[ebp +228]
  add esi,ecx
  mov ebx,[esi]
  inc ebx
  mov eax,1
  cmp ebx,80000000h
  jae .M60
  mov edx,1
  xor eax,eax
  div ebx
.M60:
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
.M61:
  push eax
  push ecx
  inc ecx
  xor edx,edx
  push esi
.M62:
  mov [esi],edx
  sub esi,4
  loop .M62
  pop esi
  pop ecx
.M63:
  mov eax,[edi]
  mul ebx
  add [esi],eax
  adc [esi-4],edx
  adc [esi-8],dword 0
  pop eax
  cmp eax,1
  jne .M_63
  add edi,4
  jmp .MM_63
.M_63:
  sub edi,4
.MM_63:
  push eax
  sub esi,4
  dec ecx
  jnz .M63
  pop eax
  push esi
  cmp eax,1
  je .M64
  sub esi,4
  mov edi,[ebp+228]
  mov ecx,[ebp + 1028]
  dec eax
  jnz .M61
.M64:
  inc dword [ebp+112]
  mov ecx,[ebp+112]
  sub ecx,[ebp + 1028]
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
.M65:
  pop esi
  pop edi
  push edi
  push esi
  mov ecx,[ebp + 1028]
  mov edx,[edi]
  mov eax,[edi+4]
  mov ebx,[esi]
  cmp edx,ebx
  jne .M66
  mov ebx,-1
  push ebx
  jmp .M67
.M66:
  div ebx
  mov ebx,eax
  push ebx
  cmp ebx,0
  jz .M80
.M67:
  mov ecx,3
  xor eax,eax
  pop ebx
  pop edi
  push edi
  push ebx
  sub edi,4
  push edi
.M68:
  mov [edi],eax
  sub edi,4
  loop .M68
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
.M69:
  push esi
  push edi
  push ebx
  mov ecx,3
  xor edx,edx
.M70:
  mov eax,[esi]
  cmp edx,0
  jz .M71
  xor edx,edx
  stc
.M71:
  mov ebx,[edi]
  sbb eax,ebx
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M70
  cmp edx,0
  jnz .M72
  pop ebx
  pop eax
  pop eax
  push ebx
  jmp .M75
.M72:
  pop ebx
  dec ebx
  jnz .M86
  pop eax
  pop eax
  push ebx
  jmp .M80
.M86:
  push ebx
  mov ecx,[ebp + 1028]
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
.M73:
  cmp edx,0
  jz .M74
  xor edx,edx
  stc
.M74:
  mov eax,[edi]
  mov ebx,[esi]
  sbb eax,ebx
  adc edx,0
  mov [edi],eax
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M73
  sub [edi],edx
  pop ebx
  pop edi
  pop esi
  jmp .M69
.M75:
  pop ebx
  pop esi
  push esi
  push ebx
  sub esi,4
  mov ecx, [ebp + 1028]
  mov edx,ecx
  inc ecx
  xor eax,eax
  push esi
.M76:
  mov [esi],eax
  sub esi,4
  loop .M76
  pop esi
  mov ecx,edx
  pop ebx
  pop edi
  push edi
  push ebx
  dec edx
  shl edx,2
  add edi,edx
.M77:
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
  jnz .M77
  pop ebx
  pop edi
  pop esi
  push esi
  push edi
  push ebx
  mov eax, [ebp + 1028]
  mov ecx,eax
  shl eax,2
  add esi,eax
  sub edi,4
  inc ecx
  xor edx,edx
  push edi
  push esi
.M78:
  mov eax,[esi]
  cmp edx,0
  jz  .M79
  xor edx,edx
  stc
.M79:
  mov ebx,[edi]
  sbb eax,ebx
  mov [esi],eax
  adc edx,0
  sub edi,4
  sub esi,4
  dec ecx
  jnz .M78
  pop esi
  pop edi
  cmp edx,0
  je .M80
  pop ebx
  dec ebx
  push ebx
  push edi
  mov ecx,[ebp + 1028]
  mov edx,ecx
.M89:
  mov eax,[esi]
  add eax,[edi]
  mov [esi],eax
  adc [edi-4],dword 0
  sub edi,4
  sub esi,4
  loop .M89
  pop esi
  xor eax,eax
  mov ecx,edx
  inc ecx
  push esi
  jmp .M76
.M80:
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
  jnz .M65
.M81:
  pop eax
  pop esi
  pop eax
  pop eax
.M82:
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
.M87:
  mov eax,[esi]
  div ebx
  mov [edi],eax
  add edi,4
  add esi,4
  dec ecx
  jnz .M87
  pop ecx
  pop edi
  xor edx,edx
.M88:
  cmp [edi],edx
  jnz .M84
  add edi,4
  dec ecx
  jnz .M88
  mov ecx,1
.M84:
  mov [ebp+112],ecx
.M85:
  pop esi
  pop edi
  pop edx
  pop ecx
  pop ebx
  pop eax
  mov ecx,[ebp+112]
  shl ecx,2
  cmp [ebp+620+4*4],ecx
  jb _errend
  mov esi,ebp
   sub esi,64
  mov edi,[ebp+220+4*4]
  shr ecx,2
.M92:
  mov eax,[esi]
  mov [edi],eax
  sub esi,4
  add edi,4
  loop .M92
  mov ecx,[ebp+112]
  mov [ebp+1020+4*4],ecx
  mov eax,4
  mov ebx,1
  mov ecx,_M8
  mov edx,_LM8
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
.P6:
  mov eax,[ebp+76]
  inc eax
  mov [ebp+76],eax
  mov eax,[ebp+36]
  shl eax,byte 1
  mov [ebp+36],eax
  jmp .P3
.P4:
  mov eax,[ebp+40]
  inc eax
  mov [ebp+40],eax
  mov eax,[ebp+40]
  mov edx,eax
  mov eax,[ebp+1024]
  cmp edx,eax
  jae .P5
  xor eax,eax
  mov [ebp+76],eax
  mov eax,1
  mov [ebp+36],eax
  jmp .P3
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
  mov ecx,_M9
  mov edx,_LM9
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
_M1: db '0x1ffffffffffffffffffffff 0xe92593c7d74c93b4'
_LM1 equ $-_M1
_M2: db  'Experiment #'
_LM2 equ $-_M2
_M3: db  '',10,''
_LM3 equ $-_M3
_M4: db  'ОШИБКА: Символьный комплекс пустой',10,''
_LM4 equ $-_M4
_M5: db  'ОШИБКА: Число не шестнадцатеричное',10,''
_LM5 equ $-_M5
_M6: db  'ОШИБКА: Символьный комплекс закончился.',10,''
_LM6 equ $-_M6
_M7: db  'L6= '
_LM7 equ $-_M7
_M8: db  'L5= '
_LM8 equ $-_M8
_M9: db  '',10,''
_LM9 equ $-_M9
