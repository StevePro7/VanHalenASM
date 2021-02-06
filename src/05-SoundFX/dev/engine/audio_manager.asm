;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module audio_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PSGSFXPlay
	.globl _engine_audio_manager_sfx_play
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$engine_audio_manager_sfx_play$0$0	= .
	.globl	G$engine_audio_manager_sfx_play$0$0
	C$audio_manager.c$8$0$0	= .
	.globl	C$audio_manager.c$8$0$0
;audio_manager.c:8: void engine_audio_manager_sfx_play()
;	---------------------------------
; Function engine_audio_manager_sfx_play
; ---------------------------------
_engine_audio_manager_sfx_play::
	C$audio_manager.c$10$1$17	= .
	.globl	C$audio_manager.c$10$1$17
;audio_manager.c:10: PSGSFXPlay( ( unsigned char* ) sfx_right_psg, SFX_CHANNEL2 );
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_sfx_right_psg
	push	hl
	call	_PSGSFXPlay
	pop	af
	inc	sp
	C$audio_manager.c$11$1$17	= .
	.globl	C$audio_manager.c$11$1$17
	XG$engine_audio_manager_sfx_play$0$0	= .
	.globl	XG$engine_audio_manager_sfx_play$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
