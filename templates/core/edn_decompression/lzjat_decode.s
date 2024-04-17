;	LZJAT Decompression Code
;	Copyright (c) Alan Moczulski 2024
;
;	Assemble this file using the following command in NASM:
;		nasm lzjat_decode.asm -o lzjat_decode.o [-f elf32 OR -f win32]

section .data
	aNewFlagsFlagpo db "new flags flagPos %d flags %x",0xa,0
	aNormInputIndex db "norm input index %d flags %x c %d",0xa,0
	aLPIndex0DLDPD db "l+p index0 %d l %d p %d",0xa,0

section .text
; int __cdecl lzjat_decode(char *compressed, char *uncompressed, int *size, int original_size)
global _lzjat_decode
; we use printf to print some useful information during decoding
extern _printf

; constants for stack offsets
var_418         EQU -418h
var_414         EQU -414h
var_410         EQU -410h
var_40C         EQU -40Ch
var_408         EQU -408h
var_404         EQU -404h
table           EQU -400h
compressed      EQU 4
uncompressed    EQU 8
size            EQU 0Ch
original_size   EQU 10h

_lzjat_decode:
	sub     esp, 418h						; allocate space for local variables
	push    ebx
	push    ebp
	mov     ebp, [esp+420h+compressed]
	push    esi
	xor     ebx, ebx
	push    edi
	mov     edi, [esp+428h+uncompressed]
	mov     [esp+428h+var_418], ebx
	mov     [esp+428h+var_410], ebx
	mov     [esp+428h+var_414], ebx
	jmp     short loc_539A1C
; ---------------------------------------------------------------------------

loc_539A18:
	mov     ebx, [esp+428h+var_408]

loc_539A1C:
	mov     eax, [esp+428h+var_410]
	shr     eax, 1
	test    ah, 0FFh
	mov     [esp+428h+var_410], eax
	jnz     short loc_539A59
	mov     ecx, [esp+428h+var_414]
	xor     eax, eax
	mov     al, [ebp+0]
	or      ah, 0FFh
	test    ecx, ecx
	mov     [esp+428h+var_410], eax
	jz      short loc_539A57
	push    eax
	push    ebx
	push    aNewFlagsFlagpo					; "new flags flagPos %d flags %x\n"
	call    _printf
	mov     eax, [esp+434h+var_414]
	add     esp, 0Ch						; clean stack after printf call
	dec     eax
	mov     [esp+428h+var_414], eax

loc_539A57:
	inc     ebp
	inc     ebx

loc_539A59:
	mov     eax, [esp+428h+var_410]
	mov     ecx, eax
	and     ecx, 1
	cmp     cl, 1
	jnz     short loc_539ACE
	mov     ecx, [esp+428h+var_414]
	mov     dl, [ebp+0]
	test    ecx, ecx
	mov     byte [esp+428h+var_404], dl
	jz      short loc_539A90
	mov     ecx, [esp+428h+var_404]
	and     ecx, 0FFh
	push    ecx
	push    eax
	push    ebx
	push    aNormInputIndex					; "norm input index %d flags %x c %d\n"
	call    _printf
	add     esp, 10h						; clean stack after printf call

loc_539A90:
	mov     dl, byte [esp+428h+var_404]
	mov     eax, [esp+428h+var_418]
	mov     ecx, [esp+428h+original_size]
	inc     ebp
	inc     ebx
	mov     [edi], dl
	inc     edi
	inc     eax
	cmp     ecx, 0FFFFFFFFh
	mov     [esp+428h+var_418], eax
	jz      loc_539A1C
	cmp     ecx, eax
	jg      loc_539A1C

loc_539ABA:
	mov     ecx, [esp+428h+size]
	pop     edi
	pop     esi
	pop     ebp
	mov     [ecx], eax
	pop     ebx
	add     esp, 418h
	retn
; ---------------------------------------------------------------------------

loc_539ACE:
	mov     al, [ebp+0]
	mov     dl, [ebp+1]
	inc     ebp
	mov     byte [esp+428h+var_40C], al
	mov     esi, [esp+428h+var_40C]
	mov     byte [esp+428h+var_40C], dl
	mov     eax, [esp+428h+var_40C]
	and     esi, 0FFh
	and     eax, 0FFh
	mov     ecx, ebx
	mov     edx, eax
	inc     ebx
	shl     esi, 4
	inc     ebp
	inc     ebx
	shr     edx, 4
	or      esi, edx
	mov     [esp+428h+var_408], ebx
	jz      short loc_539B6F
	and     eax, 0Fh
	mov     ebx, eax
	mov     eax, [esp+428h+var_414]
	test    eax, eax
	jz      short loc_539B22
	push    esi
	push    ebx
	push    ecx
	push    aLPIndex0DLDPD					; "l+p index0 %d l %d p %d\n"
	call    _printf
	add     esp, 10h						; clean stack after printf call

loc_539B22:
	mov     eax, edi
	inc     ebx
	sub     eax, esi
	mov     esi, [esp+428h+uncompressed]
	sub     eax, esi
	xor     ecx, ecx
	test    ebx, ebx
	jl      loc_539A18
	mov     edx, esi
	add     edx, eax

loc_539B3E:
	mov     al, [edx+ecx]
	mov     esi, [esp+428h+original_size]
	mov     [esp+ecx+428h+table], al
	mov     [edi], al
	mov     eax, [esp+428h+var_418]
	inc     edi
	inc     eax
	cmp     esi, 0FFFFFFFFh
	mov     [esp+428h+var_418], eax
	jz      short loc_539B65
	cmp     esi, eax
	jle     loc_539ABA

loc_539B65:
	inc     ecx
	cmp     ecx, ebx
	jle     short loc_539B3E
	jmp     loc_539A18
; ---------------------------------------------------------------------------

loc_539B6F:
	mov     edx, [esp+428h+size]
	mov     eax, [esp+428h+var_418]
	pop     edi
	pop     esi
	pop     ebp
	mov     [edx], eax
	pop     ebx
	add     esp, 418h
	retn
