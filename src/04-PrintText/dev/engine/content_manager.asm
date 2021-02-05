;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module content_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_loadPSGaidencompressedTiles
	.globl _SMS_loadBGPalette
	.globl _bank_to_be_mapped_on_slot2
	.globl _engine_content_manager_load_tiles
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$bank_to_be_mapped_on_slot2$0$0 == 0xffff
_bank_to_be_mapped_on_slot2	=	0xffff
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
	G$engine_content_manager_load_tiles$0$0	= .
	.globl	G$engine_content_manager_load_tiles$0$0
	C$content_manager.c$9$0$0	= .
	.globl	C$content_manager.c$9$0$0
;content_manager.c:9: void engine_content_manager_load_tiles()
;	---------------------------------
; Function engine_content_manager_load_tiles
; ---------------------------------
_engine_content_manager_load_tiles::
	C$content_manager.c$11$1$49	= .
	.globl	C$content_manager.c$11$1$49
;content_manager.c:11: SMS_loadPSGaidencompressedTiles( font__tiles__psgcompr, FONT_TILES );
	ld	hl, #0x0000
	push	hl
	ld	hl, #_font__tiles__psgcompr
	push	hl
	call	_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	C$content_manager.c$12$1$49	= .
	.globl	C$content_manager.c$12$1$49
;content_manager.c:12: SMS_loadBGPalette( ( void * ) font__palette__bin );
	ld	hl, #_font__palette__bin+0
	C$content_manager.c$13$1$49	= .
	.globl	C$content_manager.c$13$1$49
	XG$engine_content_manager_load_tiles$0$0	= .
	.globl	XG$engine_content_manager_load_tiles$0$0
	jp  _SMS_loadBGPalette
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
