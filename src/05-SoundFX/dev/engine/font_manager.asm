;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module font_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _engine_font_manager_draw_char
	.globl _engine_font_manager_draw_text
	.globl _engine_font_manager_draw_data
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
	G$engine_font_manager_draw_char$0$0	= .
	.globl	G$engine_font_manager_draw_char$0$0
	C$font_manager.c$10$0$0	= .
	.globl	C$font_manager.c$10$0$0
;font_manager.c:10: void engine_font_manager_draw_char( const unsigned char ch, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_draw_char
; ---------------------------------
_engine_font_manager_draw_char::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$font_manager.c$12$1$0	= .
	.globl	C$font_manager.c$12$1$0
;font_manager.c:12: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$13$1$62	= .
	.globl	C$font_manager.c$13$1$62
;font_manager.c:13: unsigned char tile = ch - TEXT_ROOT;
	ld	a, 4 (ix)
	add	a, #0xe0
	ld	e, a
	C$font_manager.c$14$1$62	= .
	.globl	C$font_manager.c$14$1$62
;font_manager.c:14: SMS_setNextTileatXY( x, y );
	ld	l, 6 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	call	_SMS_crt0_RST08
	C$font_manager.c$15$1$62	= .
	.globl	C$font_manager.c$15$1$62
;font_manager.c:15: SMS_setTile( *pnt + tile );
	ld	hl, #_font__tilemap__bin + 0
	ld	l, (hl)
	ld	h, #0x00
	ld	d, #0x00
	add	hl, de
	C$font_manager.c$16$1$62	= .
	.globl	C$font_manager.c$16$1$62
	XG$engine_font_manager_draw_char$0$0	= .
	.globl	XG$engine_font_manager_draw_char$0$0
	pop	ix
	jp	_SMS_crt0_RST18
	G$engine_font_manager_draw_text$0$0	= .
	.globl	G$engine_font_manager_draw_text$0$0
	C$font_manager.c$18$1$62	= .
	.globl	C$font_manager.c$18$1$62
;font_manager.c:18: void engine_font_manager_draw_text( const unsigned char *text, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_draw_text
; ---------------------------------
_engine_font_manager_draw_text::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$font_manager.c$20$1$62	= .
	.globl	C$font_manager.c$20$1$62
;font_manager.c:20: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$23$1$64	= .
	.globl	C$font_manager.c$23$1$64
;font_manager.c:23: while( '\0' != text[idx] )
	ld	a, 6 (ix)
	ld	-1 (ix), a
	ld	e, #0x00
00101$:
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z,00104$
	C$font_manager.c$25$2$65	= .
	.globl	C$font_manager.c$25$2$65
;font_manager.c:25: signed char tile = text[idx] - TEXT_ROOT;
	add	a, #0xe0
	ld	d, a
	C$font_manager.c$26$2$65	= .
	.globl	C$font_manager.c$26$2$65
;font_manager.c:26: SMS_setNextTileatXY( x++, y );
	ld	l, 7 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, -1 (ix)
	inc	-1 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	call	_SMS_crt0_RST08
	C$font_manager.c$27$2$65	= .
	.globl	C$font_manager.c$27$2$65
;font_manager.c:27: SMS_setTile( *pnt + tile );
	ld	hl, #_font__tilemap__bin + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	a,d
	ld	l,a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	call	_SMS_crt0_RST18
	C$font_manager.c$28$2$65	= .
	.globl	C$font_manager.c$28$2$65
;font_manager.c:28: idx++;
	inc	e
	jr	00101$
00104$:
	inc	sp
	pop	ix
	C$font_manager.c$30$1$64	= .
	.globl	C$font_manager.c$30$1$64
	XG$engine_font_manager_draw_text$0$0	= .
	.globl	XG$engine_font_manager_draw_text$0$0
	ret
	G$engine_font_manager_draw_data$0$0	= .
	.globl	G$engine_font_manager_draw_data$0$0
	C$font_manager.c$32$1$64	= .
	.globl	C$font_manager.c$32$1$64
;font_manager.c:32: void engine_font_manager_draw_data( unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_draw_data
; ---------------------------------
_engine_font_manager_draw_data::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$font_manager.c$34$1$64	= .
	.globl	C$font_manager.c$34$1$64
;font_manager.c:34: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$43$2$68	= .
	.globl	C$font_manager.c$43$2$68
;font_manager.c:43: for( idx = 0; idx < DATA_LONG; ++idx )
	ld	a, 6 (ix)
	ld	-1 (ix), a
	ld	-2 (ix), #0x00
00106$:
	C$font_manager.c$45$2$68	= .
	.globl	C$font_manager.c$45$2$68
;font_manager.c:45: quotient = data / UNIT_ROOT;
	ld	hl, #0x000a
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	C$font_manager.c$46$2$68	= .
	.globl	C$font_manager.c$46$2$68
;font_manager.c:46: remainder = data % UNIT_ROOT;
	push	hl
	push	hl
	ld	de, #0x000a
	push	de
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	call	__moduint
	pop	af
	pop	af
	ld	e, l
	pop	bc
	pop	hl
	C$font_manager.c$49$3$69	= .
	.globl	C$font_manager.c$49$3$69
;font_manager.c:49: data /= UNIT_ROOT;
	ld	4 (ix), l
	ld	5 (ix), h
	C$font_manager.c$52$3$69	= .
	.globl	C$font_manager.c$52$3$69
;font_manager.c:52: tile = remainder + DATA_ROOT;
	ld	a, e
	add	a, #0x10
	ld	d, a
	C$font_manager.c$53$3$69	= .
	.globl	C$font_manager.c$53$3$69
;font_manager.c:53: if( 0 == quotient && 0 == remainder && idx > 0 )
	ld	a, b
	or	a,c
	jr	NZ,00102$
	or	a,e
	jr	NZ,00102$
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00102$
	C$font_manager.c$56$4$70	= .
	.globl	C$font_manager.c$56$4$70
;font_manager.c:56: tile = 0;
	ld	d, #0x00
00102$:
	C$font_manager.c$59$3$69	= .
	.globl	C$font_manager.c$59$3$69
;font_manager.c:59: SMS_setNextTileatXY( x--, y );
	ld	l, 7 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, -1 (ix)
	dec	-1 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	call	_SMS_crt0_RST08
	C$font_manager.c$60$3$69	= .
	.globl	C$font_manager.c$60$3$69
;font_manager.c:60: SMS_setTile( *pnt + tile );
	ld	hl, #_font__tilemap__bin + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	a, d
	rla
	sbc	a, a
	ld	h, a
	ld	l, d
	add	hl, bc
	call	_SMS_crt0_RST18
	C$font_manager.c$43$2$68	= .
	.globl	C$font_manager.c$43$2$68
;font_manager.c:43: for( idx = 0; idx < DATA_LONG; ++idx )
	inc	-2 (ix)
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	C,00106$
	ld	sp, ix
	pop	ix
	C$font_manager.c$62$2$68	= .
	.globl	C$font_manager.c$62$2$68
	XG$engine_font_manager_draw_data$0$0	= .
	.globl	XG$engine_font_manager_draw_data$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
