; This disassembly was created using Emulicious (http://www.emulicious.net)		
.MEMORYMAP		
SLOTSIZE $7FF0		
SLOT 0 $0000		
SLOTSIZE $10		
SLOT 1 $7FF0		
SLOTSIZE $4000		
SLOT 2 $8000		
DEFAULTSLOT 2		
.ENDME		
.ROMBANKMAP		
BANKSTOTAL 2		
BANKSIZE $7FF0		
BANKS 1		
BANKSIZE $10		
BANKS 1		
.ENDRO		
		
.enum $C000 export		
_RAM_C000_ db		
_RAM_C001_ db		
_RAM_C002_ db		
_RAM_C003_ dw		
_RAM_C005_ dw		
_RAM_C007_ db		
.ende		
		
.enum $C047 export		
_RAM_C047_ db		
.ende		
		
.enum $C0C7 export		
_RAM_C0C7_ db		
_RAM_C0C8_ dw		
_RAM_C0CA_ db		
.ende		
		
.enum $C0EA export		
_RAM_C0EA_ dsb $6		
.ende		
		
.enum $FFFC export		
_RAM_FFFC_ db		
.ende		
		
; Ports		
.define Port_VDPData $BE		
.define Port_VDPAddress $BF		
		
; Input Ports		
.define Port_VCounter $7E		
.define Port_VDPStatus $BF		
.define Port_IOPort1 $DC		
.define Port_IOPort2 $DD		
		
.BANK 0 SLOT 0		
.ORG $0000		
		
_LABEL_0_:		
			di
			im 1
			jp _LABEL_70_
		
		; Data from 6 to 7 (2 bytes)
		.db $00 $00
		
_LABEL_8_:		
			ld c, Port_VDPAddress
			di
			out (c), l
			out (c), h
			ei
			ret
		
		; Data from 11 to 37 (39 bytes)
		.db $00 $00 $00 $00 $00 $00 $00 $7D $D3 $BE $7C $D6 $00 $00 $D3 $BE
		.db $C9
		.dsb 22, $00
		
_LABEL_38_:		
			jp _LABEL_AF6_
		
		; Data from 3B to 65 (43 bytes)
		.dsb 43, $00
		
_LABEL_66_:		
			jp _LABEL_B29_
		
		; Data from 69 to 6F (7 bytes)
		.db $00 $00 $00 $00 $00 $00 $00
		
_LABEL_70_:		
			ld sp, $DFF0
			ld de, _RAM_FFFC_
			xor a
			ld (de), a
			ld b, $03
-:		
			inc de
			ld (de), a
			inc a
			djnz -
			xor a
			ld hl, _RAM_C000_
			ld (hl), a
			ld de, _RAM_C000_ + 1
			ld bc, $1FF0
			ldir
			call _LABEL_C54_
			call _LABEL_841_
			ei
			call _main
			jp _LABEL_204_
		
		; Data from 99 to 203 (363 bytes)
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
		.db $C9
		.dsb 102, $00
		.db $3E $02 $CF $C9
		
_LABEL_204_:		
			ld a, $00
			rst $08	; _LABEL_8_
-:		
			halt
			jr -
		
_main:		
			ld hl, $0140
			call _LABEL_8B7_
			call _engine_content_manager_load_tiles
			ld hl, $050A
			push hl
			ld a, $41
			push af
			inc sp
			call _engine_font_manager_draw_char
			inc sp
			ld hl, $0A0A
			ex (sp), hl
			ld hl, $0243
			push hl
			call _engine_font_manager_draw_text
			pop af
			ld hl, $0F0A
			ex (sp), hl
			ld hl, $0034
			push hl
			call _engine_font_manager_draw_data
			pop af
			pop af
			ld hl, $0140
			call _LABEL_8A0_
-:		
			call _LABEL_A66_
			jr -
		
		; Data from 243 to 2A2 (96 bytes)
		.db $48 $45 $4C $4C $4F $20 $57 $4F $52 $4C $44 $00 $53 $74 $65 $76
		.db $65 $50 $72 $6F $20 $53 $74 $75 $64 $69 $6F $73 $00 $48 $65 $6C
		.db $6C $6F $20 $57 $6F $72 $6C $64 $00 $53 $69 $6D $70 $6C $65 $20
		.db $53 $65 $67 $61 $20 $4D $61 $73 $74 $65 $72 $20 $53 $79 $73 $74
		.db $65 $6D $20 $64 $65 $6D $6F $20 $74 $6F $20 $72 $75 $6E $20 $6F
		.db $6E $20 $72 $65 $61 $6C $20 $68 $61 $72 $64 $77 $61 $72 $65 $00
		
_engine_content_manager_load_tiles:		
			ld hl, $0000
			push hl
			ld hl, _font__tiles__psgcompr	; _font__tiles__psgcompr = $0539
			push hl
			call _LABEL_B3D_
			pop af
			pop af
			ld hl, _font__palette__bin	; _font__palette__bin = $04A9
			jp _LABEL_9AA_
		
_engine_font_manager_draw_char:		
			push ix
			ld ix, $0000
			add ix, sp
			ld a, (ix+4)
			add a, $E0
			ld e, a
			ld l, (ix+6)
			ld h, $00
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			ld c, l
			ld b, h
			ld l, (ix+5)
			ld h, $00
			add hl, hl
			ld a, c
			or l
			ld c, a
			ld a, b
			or h
			ld b, a
			ld hl, $7800
			add hl, bc
			call _LABEL_997_
			ld hl, _font__tilemap__bin	; _font__tilemap__bin = $04B9
			ld l, (hl)
			ld h, $00
			ld d, $00
			add hl, de
			pop ix
			jp _LABEL_9A0_
		
_engine_font_manager_draw_text:		
			push ix
			ld ix, $0000
			add ix, sp
			dec sp
			ld a, (ix+6)
			ld (ix-1), a
			ld e, $00
_LABEL_303_:		
			ld l, (ix+4)
			ld h, (ix+5)
			ld d, $00
			add hl, de
			ld a, (hl)
			or a
			jr z, +
			add a, $E0
			ld d, a
			ld l, (ix+7)
			ld h, $00
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			ld c, l
			ld b, h
			ld l, (ix-1)
			inc (ix-1)
			ld h, $00
			add hl, hl
			ld a, c
			or l
			ld c, a
			ld a, b
			or h
			ld b, a
			ld hl, $7800
			add hl, bc
			call _LABEL_997_
			ld hl, _font__tilemap__bin	; _font__tilemap__bin = $04B9
			ld c, (hl)
			ld b, $00
			ld a, d
			ld l, a
			rla
			sbc a, a
			ld h, a
			add hl, bc
			call _LABEL_9A0_
			inc e
			jr _LABEL_303_
		
+:		
			inc sp
			pop ix
			ret
		
_engine_font_manager_draw_data:		
			push ix
			ld ix, $0000
			add ix, sp
			push af
			ld a, (ix+6)
			ld (ix-1), a
			ld (ix-2), $00
_LABEL_35F_:		
			ld hl, $000A
			push hl
			ld l, (ix+4)
			ld h, (ix+5)
			push hl
			call _LABEL_800_
			pop af
			pop af
			push hl
			push hl
			ld de, $000A
			push de
			ld e, (ix+4)
			ld d, (ix+5)
			push de
			call _LABEL_C43_
			pop af
			pop af
			ld e, l
			pop bc
			pop hl
			ld (ix+4), l
			ld (ix+5), h
			ld a, e
			add a, $10
			ld d, a
			ld a, b
			or c
			jr nz, +
			or e
			jr nz, +
			ld a, (ix-2)
			or a
			jr z, +
			ld d, $00
+:		
			ld l, (ix+7)
			ld h, $00
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			add hl, hl
			ld c, l
			ld b, h
			ld l, (ix-1)
			dec (ix-1)
			ld h, $00
			add hl, hl
			ld a, c
			or l
			ld c, a
			ld a, b
			or h
			ld b, a
			ld hl, $7800
			add hl, bc
			call _LABEL_997_
			ld hl, _font__tilemap__bin	; _font__tilemap__bin = $04B9
			ld c, (hl)
			ld b, $00
			ld a, d
			rla
			sbc a, a
			ld h, a
			ld l, d
			add hl, bc
			call _LABEL_9A0_
			inc (ix-2)
			ld a, (ix-2)
			sub $05
			jr c, _LABEL_35F_
			ld sp, ix
			pop ix
			ret
		
; Data from 3DE to 3ED (16 bytes)		
_cursor__palette__bin:		
		.db $00 $00 $15 $15 $2A $2A $15 $15 $2A $2A $2A $2A $3F $3F $3F $3F
		
; Data from 3EE to 4A8 (187 bytes)		
_cursor__tiles__psgcompr:		
		.db $12 $00 $AA $CF $00 $7F $20 $0F $E0 $80 $C0 $DF $DF $1F $00 $7F
		.db $7F $3F $0F $C0 $FF $FF $FF $E0 $AA $DF $00 $FF $20 $EF $FF $20
		.db $3F $FF $FF $02 $AA $DF $00 $FF $20 $EF $FF $20 $3F $FF $FF $02
		.db $AA $DF $00 $FF $20 $EF $FF $20 $3F $FF $FF $02 $AA $DF $00 $FF
		.db $20 $EF $FF $20 $3F $FF $FF $02 $AA $0F $04 $01 $00 $FC $00 $20
		.db $8F $02 $F8 $F8 $0F $00 $FE $FC $FC $04 $1F $03 $FF $FF $FF $22
		.db $FF $E0 $FF $C0 $00 $00 $00 $00 $A2 $FF $04 $00 $FF $03 $AA $F5
		.db $00 $3F $80 $F8 $E0 $80 $80 $00 $F0 $00 $20 $3F $7F $FF $FC $C0
		.db $80 $00 $88 $F7 $00 $FF $F8 $00 $FF $FF $FF $88 $F7 $00 $FF $F8
		.db $00 $FF $FF $FF $88 $F7 $00 $FF $F8 $00 $FF $FF $FF $88 $F7 $00
		.db $FF $F8 $00 $FF $FF $FF $AA $F0 $04 $F8 $02 $01 $00 $F8 $04 $00
		.db $06 $07 $F8 $00 $FC $FE $FF $FC $03 $01 $00
		
; Data from 4A9 to 4B8 (16 bytes)		
_font__palette__bin:		
		.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
		
; Data from 4B9 to 538 (128 bytes)		
_font__tilemap__bin:		
		.db $00 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
		.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E $00 $0F $00
		.db $10 $00 $11 $00 $12 $00 $13 $00 $14 $00 $15 $00 $16 $00 $17 $00
		.db $18 $00 $19 $00 $1A $00 $1B $00 $1C $00 $1D $00 $1E $00 $1F $00
		.db $20 $00 $21 $00 $22 $00 $23 $00 $24 $00 $25 $00 $26 $00 $27 $00
		.db $28 $00 $29 $00 $2A $00 $2B $00 $2C $00 $2D $00 $2E $00 $2F $00
		.db $30 $00 $31 $00 $32 $00 $33 $00 $34 $00 $35 $00 $36 $00 $37 $00
		.db $38 $00 $39 $00 $3A $00 $3B $00 $3C $00 $3D $00 $3E $00 $3F $00
		
; Data from 539 to 7CF (663 bytes)		
_font__tiles__psgcompr:		
		.db $40 $00 $00 $AA $1A $18 $1C $1C $1C $00 $00 $00 $00 $00 $AA $1F
		.db $00 $36 $36 $24 $00 $00 $00 $AA $D6 $36 $7F $7F $00 $00 $00 $00
		.db $AA $54 $3E $08 $68 $0B $08 $00 $00 $00 $00 $EA $21 $52 $24 $08
		.db $12 $25 $42 $00 $00 $00 $00 $EA $18 $24 $34 $38 $4D $46 $3D $00
		.db $00 $00 $00 $AA $0F $00 $30 $30 $10 $20 $00 $00 $00 $AA $38 $30
		.db $0C $18 $18 $0C $00 $00 $00 $00 $AA $38 $06 $18 $0C $0C $18 $00
		.db $00 $00 $00 $AA $83 $00 $22 $14 $08 $14 $22 $00 $00 $00 $AA $6C
		.db $08 $00 $3E $00 $00 $00 $00 $00 $AA $F1 $00 $18 $18 $30 $00 $00
		.db $00 $AA $EF $00 $3E $00 $00 $00 $AA $F9 $00 $18 $18 $00 $00 $00
		.db $EA $01 $02 $04 $08 $10 $20 $40 $00 $00 $00 $00 $AA $38 $63 $1C
		.db $26 $32 $1C $00 $00 $00 $00 $AA $BC $0C $1C $3F $00 $00 $00 $00
		.db $EA $3E $63 $07 $1E $3C $70 $7F $00 $00 $00 $00 $EA $3F $06 $0C
		.db $1E $03 $63 $3E $00 $00 $00 $00 $EA $0E $1E $36 $66 $7F $06 $06
		.db $00 $00 $00 $00 $EA $7E $60 $7E $03 $03 $63 $3E $00 $00 $00 $00
		.db $EA $1E $30 $60 $7E $63 $63 $3E $00 $00 $00 $00 $AA $0E $18 $7F
		.db $63 $06 $0C $00 $00 $00 $00 $EA $3C $62 $72 $3C $4F $43 $3E $00
		.db $00 $00 $00 $EA $3E $63 $63 $3F $03 $06 $3C $00 $00 $00 $00 $AA
		.db $93 $00 $18 $18 $18 $18 $00 $00 $00 $AA $6C $18 $00 $00 $30 $00
		.db $00 $00 $00 $EA $06 $0C $18 $30 $18 $0C $06 $00 $00 $00 $00 $AA
		.db $D7 $00 $3E $3E $00 $00 $00 $EA $30 $18 $0C $06 $0C $18 $30 $00
		.db $00 $00 $00 $EA $3E $7F $63 $06 $1C $00 $1C $00 $00 $00 $00 $EA
		.db $1E $33 $67 $67 $60 $33 $1E $00 $00 $00 $00 $AA $36 $63 $1C $36
		.db $7F $00 $00 $00 $00 $AA $6C $63 $7E $7E $7E $00 $00 $00 $00 $AA
		.db $38 $60 $1E $33 $33 $1E $00 $00 $00 $00 $AA $38 $63 $7C $66 $66
		.db $7C $00 $00 $00 $00 $AA $6C $60 $7F $7E $7F $00 $00 $00 $00 $AA
		.db $6E $60 $7F $7E $00 $00 $00 $00 $EA $1F $30 $60 $67 $63 $33 $1F
		.db $00 $00 $00 $00 $AA $EE $63 $7F $00 $00 $00 $00 $AA $7C $0C $3F
		.db $3F $00 $00 $00 $00 $AA $F8 $03 $63 $3E $00 $00 $00 $00 $EA $63
		.db $66 $6C $78 $7C $6E $67 $00 $00 $00 $00 $AA $FC $60 $7F $00 $00
		.db $00 $00 $AA $86 $63 $77 $7F $7F $6B $00 $00 $00 $00 $EA $63 $73
		.db $7B $7F $6F $67 $63 $00 $00 $00 $00 $AA $7C $63 $3E $3E $00 $00
		.db $00 $00 $AA $70 $63 $7E $7E $60 $60 $00 $00 $00 $00 $AA $70 $63
		.db $3E $6F $66 $3D $00 $00 $00 $00 $EA $7E $63 $63 $67 $7C $6E $67
		.db $00 $00 $00 $00 $EA $3C $66 $60 $3E $03 $63 $3E $00 $00 $00 $00
		.db $AA $7E $0C $3F $00 $00 $00 $00 $AA $FC $63 $3E $00 $00 $00 $00
		.db $AA $E0 $63 $77 $3E $1C $08 $00 $00 $00 $00 $AA $C2 $63 $6B $7F
		.db $7F $77 $00 $00 $00 $00 $EA $63 $77 $3E $1C $3E $77 $63 $00 $00
		.db $00 $00 $AA $0E $0C $33 $33 $33 $1E $00 $00 $00 $00 $EA $7F $07
		.db $0E $1C $38 $70 $7F $00 $00 $00 $00 $AA $7C $18 $1E $1E $00 $00
		.db $00 $00 $EA $40 $20 $10 $08 $04 $02 $01 $00 $00 $00 $00 $AA $7C
		.db $0C $3C $3C $00 $00 $00 $00 $AA $1F $00 $08 $14 $2A $00 $00 $00
		.db $AA $FE $00 $7F $00 $00 $00
		
; Data from 7D0 to 7DF (16 bytes)		
_sprite__palette__bin:		
		.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
		
; Data from 7E0 to 7FF (32 bytes)		
_sprite__tiles__psgcompr:		
		.db $02 $00 $32 $03 $0F $1F $3F $33 $61 $61 $73 $21 $F9 $6D $6D $33
		.db $7F $33 $38 $1C $8F $53 $A0 $50 $7F $3F $3F $1F $8F $D3 $E0 $70
		
_LABEL_800_:		
			pop af
			pop hl
			pop de
			push de
			push hl
			push af
			jr _LABEL_812_
		
		; Data from 808 to 811 (10 bytes)
		.db $21 $03 $00 $39 $5E $2B $6E $26 $00 $54
		
_LABEL_812_:		
			ld a, e
			and $80
			or d
			jr nz, ++
			ld b, $10
			adc hl, hl
-:		
			rla
			sub e
			jr nc, +
			add a, e
+:		
			ccf
			adc hl, hl
			djnz -
			ld e, a
			ret
		
++:		
			ld b, $09
			ld a, l
			ld l, h
			ld h, $00
			rr l
-:		
			adc hl, hl
			sbc hl, de
			jr nc, +
			add hl, de
+:		
			ccf
			rla
			djnz -
			rl b
			ld d, b
			ld e, a
			ex de, hl
			ret
		
_LABEL_841_:		
			ld c, $00
-:		
			ld hl, _DATA_88D_
			ld b, $00
			add hl, bc
			ld b, (hl)
			di
			ld a, b
			out (Port_VDPAddress), a
			ld a, c
			set 7, a
			out (Port_VDPAddress), a
			ei
			inc c
			ld a, c
			sub $0B
			jr c, -
			call _LABEL_9D2_
			call _LABEL_A1F_
			call _LABEL_A31_
			call _LABEL_AC8_
-:		
			in a, (Port_VCounter)
			ld b, a
			ld a, $80
			sub b
			jr c, -
-:		
			in a, (Port_VCounter)
			sub $80
			jr c, -
-:		
			in a, (Port_VCounter)
			ld c, a
			in a, (Port_VCounter)
			sub c
			jr nc, -
			ld a, c
			sub $E7
			jr c, +
			ld hl, _RAM_C002_
			ld (hl), $80
			ret
		
+:		
			ld hl, _RAM_C002_
			ld (hl), $40
			ret
		
; Data from 88D to 89F (19 bytes)		
_DATA_88D_:		
		.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $02 $C0 $FD
		.db $6E $00 $C9
		
_LABEL_8A0_:		
			ld c, l
			ld e, h
			ld d, $00
			ld hl, $C0EA
			add hl, de
			ld a, (hl)
			or c
			ld c, a
			ld (hl), c
			di
			ld a, c
			out (Port_VDPAddress), a
			ld a, e
			set 7, a
			out (Port_VDPAddress), a
			ei
			ret
		
_LABEL_8B7_:		
			ld a, l
			ld e, h
			cpl
			ld b, a
			ld d, $00
			ld hl, $C0EA
			add hl, de
			ld a, (hl)
			and b
			ld c, a
			ld (hl), c
			di
			ld a, c
			out (Port_VDPAddress), a
			ld a, e
			set 7, a
			out (Port_VDPAddress), a
			ei
			ret
		
		; Data from 8D0 to 996 (199 bytes)
		.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $88 $D3 $BF $FB $C9 $21
		.db $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $89 $D3 $BF $FB $C9 $21 $02
		.db $00 $39 $4E $F3 $79 $D3 $BF $3E $87 $D3 $BF $FB $C9 $21 $02 $00
		.db $39 $CB $46 $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79 $D3 $BF $3E
		.db $86 $D3 $BF $FB $C9 $21 $02 $00 $39 $7E $0F $30 $0E $21 $02 $01
		.db $CD $A0 $08 $21 $10 $00 $22 $EC $C0 $18 $0C $21 $02 $01 $CD $B7
		.db $08 $21 $08 $00 $22 $EC $C0 $21 $02 $00 $39 $7E $E6 $02 $28 $1D
		.db $21 $01 $01 $CD $A0 $08 $21 $10 $00 $22 $EE $C0 $FD $21 $EC $C0
		.db $FD $CB $00 $26 $FD $21 $EC $C0 $FD $CB $01 $16 $C9 $21 $01 $01
		.db $CD $B7 $08 $21 $08 $00 $22 $EE $C0 $C9 $21 $02 $00 $39 $4E $F3
		.db $79 $D3 $BF $3E $C0 $D3 $BF $FB $21 $03 $00 $39 $7E $D3 $BE $C9
		.db $21 $02 $00 $39 $7E $CB $E7 $F3 $D3 $BF $3E $C0 $D3 $BF $FB $21
		.db $03 $00 $39 $7E $D3 $BE $C9
		
_LABEL_997_:		
			ld c, Port_VDPAddress
			di
			out (c), l
			out (c), h
			ei
			ret
		
_LABEL_9A0_:		
			ld a, l
			out (Port_VDPData), a
			ld a, h
			sub $00
			nop
			out (Port_VDPData), a
			ret
		
_LABEL_9AA_:		
			ld de, $C000
			ld c, Port_VDPAddress
			di
			out (c), e
			out (c), d
			ei
			ld b, $10
			ld c, Port_VDPData
-:		
			outi
			jr nz, -
			ret
		
		; Data from 9BE to 9D1 (20 bytes)
		.db $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
		.db $A3 $20 $FC $C9
		
_LABEL_9D2_:		
			ld hl, _RAM_C0C7_
			ld (hl), $00
			ret
		
		; Data from 9D8 to A1E (71 bytes)
		.db $3A $C7 $C0 $D6 $40 $30 $3D $21 $03 $00 $39 $4E $0D $79 $D6 $D0
		.db $28 $2F $21 $07 $C0 $ED $5B $C7 $C0 $16 $00 $19 $71 $3A $C7 $C0
		.db $87 $4F $21 $47 $C0 $06 $00 $09 $FD $21 $02 $00 $FD $39 $FD $7E
		.db $00 $77 $23 $FD $21 $04 $00 $FD $39 $FD $7E $00 $77 $21 $C7 $C0
		.db $34 $2E $01 $C9 $2E $00 $C9
		
_LABEL_A1F_:		
			ld a, (_RAM_C0C7_)
			sub $40
			ret nc
			ld bc, $C007
			ld hl, (_RAM_C0C7_)
			ld h, $00
			add hl, bc
			ld (hl), $D0
			ret
		
_LABEL_A31_:		
			di
			ld a, $00
			out (Port_VDPAddress), a
			ld a, $7F
			out (Port_VDPAddress), a
			ei
			ld bc, _RAM_C007_
			ld e, $40
-:		
			ld a, (bc)
			out (Port_VDPData), a
			inc bc
			ld d, e
			dec d
			ld a, d
			ld e, a
			or a
			jr nz, -
			di
			ld a, $80
			out (Port_VDPAddress), a
			ld a, $7F
			out (Port_VDPAddress), a
			ei
			ld bc, _RAM_C047_
			ld e, $80
-:		
			ld a, (bc)
			out (Port_VDPData), a
			inc bc
			ld d, e
			dec d
			ld a, d
			ld e, a
			or a
			jr nz, -
			ret
		
_LABEL_A66_:		
			ld hl, _RAM_C000_
			ld (hl), $00
-:		
			ld hl, _RAM_C000_
			bit 0, (hl)
			jr z, -
			ret
		
		; Data from A73 to AC7 (85 bytes)
		.db $2A $03 $C0 $C9 $3A $05 $C0 $2F $4F $3A $06 $C0 $2F $47 $3A $03
		.db $C0 $A1 $6F $3A $04 $C0 $A0 $67 $C9 $3A $03 $C0 $FD $21 $05 $C0
		.db $FD $A6 $00 $6F $3A $04 $C0 $FD $21 $05 $C0 $FD $A6 $01 $67 $C9
		.db $3A $03 $C0 $2F $4F $3A $04 $C0 $2F $47 $79 $FD $21 $05 $C0 $FD
		.db $A6 $00 $6F $78 $FD $21 $05 $C0 $FD $A6 $01 $67 $C9 $FD $21 $01
		.db $C0 $FD $6E $00 $C9
		
_LABEL_AC8_:		
			ld hl, _RAM_C001_
			ld (hl), $00
			ret
		
		; Data from ACE to AF5 (40 bytes)
		.db $21 $02 $00 $39 $7E $32 $C8 $C0 $21 $03 $00 $39 $7E $32 $C9 $C0
		.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
		.db $DB $7E $6F $C9 $DB $7F $6F $C9
		
_LABEL_AF6_:		
			push af
			push hl
			in a, (Port_VDPStatus)
			rlca
			jr nc, +
			ld hl, _RAM_C000_
			ld (hl), $01
			ld hl, (_RAM_C003_)
			ld (_RAM_C005_), hl
			in a, (Port_IOPort1)
			cpl
			ld hl, _RAM_C003_
			ld (hl), a
			in a, (Port_IOPort2)
			cpl
			inc hl
			ld (hl), a
			jr ++
		
+:		
			push bc
			push de
			push iy
			ld hl, (_RAM_C0C8_)
			call +++
			pop iy
			pop de
			pop bc
++:		
			pop hl
			pop af
			ei
			reti
		
_LABEL_B29_:		
			push af
			push bc
			push de
			push hl
			push iy
			ld hl, _RAM_C001_
			ld (hl), $01
			pop iy
			pop hl
			pop de
			pop bc
			pop af
			retn
		
+++:		
			jp (hl)
		
_LABEL_B3D_:		
			ld iy, $0004
			add iy, sp
			ld b, (iy+0)
			ld c, (iy+1)
			sla b
			rl c
			sla b
			rl c
			sla b
			rl c
			sla b
			rl c
			sla b
			rl c
			di
			ld a, b
			out (Port_VDPAddress), a
			ld b, $00
			set 6, c
			ld a, c
			out (Port_VDPAddress), a
			ei
			pop bc
			pop ix
			push ix
			push bc
			ld c, (ix+0)
			inc ix
			ld b, (ix+0)
			inc ix
_LABEL_B79_:		
			push bc
			ld b, $04
			ld de, _RAM_C0CA_
			ld c, (ix+0)
			inc ix
_LABEL_B84_:		
			rlc c
			jr nc, _LABEL_BCB_
			rlc c
			jr c, ++
			ld a, (ix+0)
			inc ix
			ex de, hl
			ld d, a
			and $03
			add a, a
			add a, a
			add a, a
			ld e, a
			ld a, d
			ld d, $00
			ld iy, _RAM_C0CA_
			add iy, de
			ex de, hl
			cp $03
			jr c, _LABEL_BE5_
			cp $10
			jr c, +
			cp $13
			jr c, ++++
			cp $20
			jr c, +
			cp $23
			jr c, +++++
			cp $40
			jr c, +
			cp $43
			jr c, ++++++
+:		
			ld h, a
			ld l, (ix+0)
			inc ix
			jr +++
		
++:		
			ld h, $00
			jr +++
		
_LABEL_BCB_:		
			rlc c
			sbc a, a
			ld l, a
			ld h, $FF
+++:		
			push bc
			ld b, $08
-:		
			ld a, l
			rlc h
			jr c, +
			ld a, (ix+0)
			inc ix
+:		
			ld (de), a
			inc de
			djnz -
			pop bc
			jr ++++++++
		
_LABEL_BE5_:		
			ld hl, $FF00
			jr +++++++
		
++++:		
			ld hl, $FFFF
			jr +++++++
		
+++++:		
			ld h, (ix+0)
			ld l, $00
			inc ix
			jr +++++++
		
++++++:		
			ld h, (ix+0)
			ld l, $FF
			inc ix
+++++++:		
			push bc
			ld b, $08
-:		
			ld a, (iy+0)
			inc iy
			xor l
			rlc h
			jr c, +
			ld a, (ix+0)
			inc ix
+:		
			ld (de), a
			inc de
			djnz -
			pop bc
++++++++:		
			dec b
			jp nz, _LABEL_B84_
			ld de, $0008
			ld c, e
			ld hl, _RAM_C0CA_
--:		
			ld b, $04
			push hl
-:		
			ld a, (hl)
			out (Port_VDPData), a
			add hl, de
			djnz -
			pop hl
			inc hl
			dec c
			jr nz, --
			pop bc
			dec bc
			ld a, b
			or c
			jp nz, _LABEL_B79_
			ret
		
		; Data from C37 to C42 (12 bytes)
		.db $21 $03 $00 $39 $5E $2B $6E $CD $0F $08 $EB $C9
		
_LABEL_C43_:		
			pop af
			pop hl
			pop de
			push de
			push hl
			push af
			call _LABEL_812_
			ex de, hl
			ret
		
; Data from C4E to C53 (6 bytes)		
_DATA_C4E_:		
		.db $04 $20 $08 $00 $08 $00
		
_LABEL_C54_:		
			ld bc, $0006
			ld a, b
			or c
			jr z, +
			ld de, _RAM_C0EA_
			ld hl, _DATA_C4E_
			ldir
+:		
			ret
		
		; Data from C64 to 7F8B (29480 bytes)
		.dsb 29480, $00
		
; Data from 7F8C to 7FC2 (55 bytes)		
___SMS__SDSC_descr:		
		.db $53 $69 $6D $70 $6C $65 $20 $53 $65 $67 $61 $20 $4D $61 $73 $74
		.db $65 $72 $20 $53 $79 $73 $74 $65 $6D $20 $64 $65 $6D $6F $20 $74
		.db $6F $20 $72 $75 $6E $20 $6F $6E $20 $72 $65 $61 $6C $20 $68 $61
		.db $72 $64 $77 $61 $72 $65 $00
		
; Data from 7FC3 to 7FCE (12 bytes)		
___SMS__SDSC_name:		
		.db $48 $65 $6C $6C $6F $20 $57 $6F $72 $6C $64 $00
		
; Data from 7FCF to 7FDF (17 bytes)		
___SMS__SDSC_author:		
		.db $53 $74 $65 $76 $65 $50 $72 $6F $20 $53 $74 $75 $64 $69 $6F $73
		.db $00
		
; Data from 7FE0 to 7FEF (16 bytes)		
___SMS__SDSC_signature:		
		.db $53 $44 $53 $43 $01 $00 $15 $09 $17 $20 $CF $7F $C3 $7F $8C $7F
		
.BANK 1 SLOT 1		
.ORG $0000		
		
; Data from 7FF0 to 7FFF (16 bytes)		
___SMS__SEGA_signature:		
		.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $CF $D3 $99 $99 $00 $4C
		