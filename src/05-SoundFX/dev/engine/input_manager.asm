;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module input_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_getKeysStatus
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _engine_input_manager_update
	.globl _engine_input_manager_hold
	.globl _engine_input_manager_move
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0$0 == 0x8000
_SMS_SRAM	=	0x8000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
Finput_manager$curr_joypad1$0$0==.
_curr_joypad1:
	.ds 2
Finput_manager$prev_joypad1$0$0==.
_prev_joypad1:
	.ds 2
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
	G$engine_input_manager_update$0$0	= .
	.globl	G$engine_input_manager_update$0$0
	C$input_manager.c$10$0$0	= .
	.globl	C$input_manager.c$10$0$0
;input_manager.c:10: void engine_input_manager_update()
;	---------------------------------
; Function engine_input_manager_update
; ---------------------------------
_engine_input_manager_update::
	C$input_manager.c$12$1$60	= .
	.globl	C$input_manager.c$12$1$60
;input_manager.c:12: prev_joypad1 = curr_joypad1;
	ld	hl, (_curr_joypad1)
	ld	(_prev_joypad1), hl
	C$input_manager.c$13$1$60	= .
	.globl	C$input_manager.c$13$1$60
;input_manager.c:13: curr_joypad1 = SMS_getKeysStatus();
	call	_SMS_getKeysStatus
	ld	(_curr_joypad1), hl
	C$input_manager.c$14$1$60	= .
	.globl	C$input_manager.c$14$1$60
	XG$engine_input_manager_update$0$0	= .
	.globl	XG$engine_input_manager_update$0$0
	ret
	G$engine_input_manager_hold$0$0	= .
	.globl	G$engine_input_manager_hold$0$0
	C$input_manager.c$17$1$60	= .
	.globl	C$input_manager.c$17$1$60
;input_manager.c:17: unsigned char engine_input_manager_hold( unsigned char data )
;	---------------------------------
; Function engine_input_manager_hold
; ---------------------------------
_engine_input_manager_hold::
	C$input_manager.c$19$1$62	= .
	.globl	C$input_manager.c$19$1$62
;input_manager.c:19: return curr_joypad1 & data && !( prev_joypad1 & data );
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	ld	b, #0x00
	ld	iy, #_curr_joypad1
	ld	a, 0 (iy)
	and	a, c
	ld	e, a
	ld	a, 1 (iy)
	and	a, b
	or	a,e
	jr	Z,00103$
	ld	a, c
	ld	iy, #_prev_joypad1
	and	a, 0 (iy)
	ld	c, a
	ld	a, b
	and	a, 1 (iy)
	or	a,c
	jr	Z,00104$
00103$:
	ld	l, #0x00
	ret
00104$:
	ld	l, #0x01
	C$input_manager.c$20$1$62	= .
	.globl	C$input_manager.c$20$1$62
	XG$engine_input_manager_hold$0$0	= .
	.globl	XG$engine_input_manager_hold$0$0
	ret
	G$engine_input_manager_move$0$0	= .
	.globl	G$engine_input_manager_move$0$0
	C$input_manager.c$22$1$62	= .
	.globl	C$input_manager.c$22$1$62
;input_manager.c:22: unsigned char engine_input_manager_move( unsigned char data )
;	---------------------------------
; Function engine_input_manager_move
; ---------------------------------
_engine_input_manager_move::
	C$input_manager.c$24$1$64	= .
	.globl	C$input_manager.c$24$1$64
;input_manager.c:24: return curr_joypad1 & data;
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	ld	a,(#_curr_joypad1 + 0)
	and	a, c
	ld	l, a
	C$input_manager.c$25$1$64	= .
	.globl	C$input_manager.c$25$1$64
	XG$engine_input_manager_move$0$0	= .
	.globl	XG$engine_input_manager_move$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Finput_manager$__xinit_curr_joypad1$0$0 == .
__xinit__curr_joypad1:
	.dw #0x0000
Finput_manager$__xinit_prev_joypad1$0$0 == .
__xinit__prev_joypad1:
	.dw #0x0000
	.area _CABS (ABS)
