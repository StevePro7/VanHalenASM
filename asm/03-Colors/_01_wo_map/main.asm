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
_RAM_C0CA_ dsb $6	
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
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
_LABEL_38_:	
		jp _LABEL_524_
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_LABEL_66_:	
		jp _LABEL_557_
	
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
		call _LABEL_571_
		call _LABEL_26F_
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
	
_stevepro:	
		ld hl, $0300
		push hl
		call _LABEL_3AE_
		pop af
		ret
	
_main:	
		call _stevepro
-:	
		call _LABEL_494_
		jr -
	
	; Data from 21B to 26E (84 bytes)
	.db $53 $74 $65 $76 $65 $50 $72 $6F $20 $53 $74 $75 $64 $69 $6F $73
	.db $00 $48 $65 $6C $6C $6F $20 $57 $6F $72 $6C $64 $00 $53 $69 $6D
	.db $70 $6C $65 $20 $53 $65 $67 $61 $20 $4D $61 $73 $74 $65 $72 $20
	.db $53 $79 $73 $74 $65 $6D $20 $64 $65 $6D $6F $20 $74 $6F $20 $72
	.db $75 $6E $20 $6F $6E $20 $72 $65 $61 $6C $20 $68 $61 $72 $64 $77
	.db $61 $72 $65 $00
	
_LABEL_26F_:	
		ld c, $00
-:	
		ld hl, _DATA_2BB_
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
		call _LABEL_400_
		call _LABEL_44D_
		call _LABEL_45F_
		call _LABEL_4F6_
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
	
; Data from 2BB to 3AD (243 bytes)	
_DATA_2BB_:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $02 $C0 $FD
	.db $6E $00 $C9 $4D $5C $16 $00 $21 $CA $C0 $19 $7E $B1 $4F $71 $F3
	.db $79 $D3 $BF $7B $CB $FF $D3 $BF $FB $C9 $7D $5C $2F $47 $16 $00
	.db $21 $CA $C0 $19 $7E $A0 $4F $71 $F3 $79 $D3 $BF $7B $CB $FF $D3
	.db $BF $FB $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $88 $D3 $BF
	.db $FB $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $89 $D3 $BF $FB
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $87 $D3 $BF $FB $C9
	.db $21 $02 $00 $39 $CB $46 $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79
	.db $D3 $BF $3E $86 $D3 $BF $FB $C9 $21 $02 $00 $39 $7E $0F $30 $0E
	.db $21 $02 $01 $CD $CE $02 $21 $10 $00 $22 $CC $C0 $18 $0C $21 $02
	.db $01 $CD $E5 $02 $21 $08 $00 $22 $CC $C0 $21 $02 $00 $39 $7E $E6
	.db $02 $28 $1D $21 $01 $01 $CD $CE $02 $21 $10 $00 $22 $CE $C0 $FD
	.db $21 $CC $C0 $FD $CB $00 $26 $FD $21 $CC $C0 $FD $CB $01 $16 $C9
	.db $21 $01 $01 $CD $E5 $02 $21 $08 $00 $22 $CE $C0 $C9 $21 $02 $00
	.db $39 $4E $F3 $79 $D3 $BF $3E $C0 $D3 $BF $FB $21 $03 $00 $39 $7E
	.db $D3 $BE $C9
	
_LABEL_3AE_:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		set 4, a
		di
		out (Port_VDPAddress), a
		ld a, $C0
		out (Port_VDPAddress), a
		ei
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
	; Data from 3C5 to 3FF (59 bytes)
	.db $0E $BF $F3 $ED $69 $ED $61 $FB $C9 $7D $D3 $BE $7C $D6 $00 $00
	.db $D3 $BE $C9 $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10
	.db $0E $BE $ED $A3 $20 $FC $C9 $11 $10 $C0 $0E $BF $F3 $ED $59 $ED
	.db $51 $FB $06 $10 $0E $BE $ED $A3 $20 $FC $C9
	
_LABEL_400_:	
		ld hl, _RAM_C0C7_
		ld (hl), $00
		ret
	
	; Data from 406 to 44C (71 bytes)
	.db $3A $C7 $C0 $D6 $40 $30 $3D $21 $03 $00 $39 $4E $0D $79 $D6 $D0
	.db $28 $2F $21 $07 $C0 $ED $5B $C7 $C0 $16 $00 $19 $71 $3A $C7 $C0
	.db $87 $4F $21 $47 $C0 $06 $00 $09 $FD $21 $02 $00 $FD $39 $FD $7E
	.db $00 $77 $23 $FD $21 $04 $00 $FD $39 $FD $7E $00 $77 $21 $C7 $C0
	.db $34 $2E $01 $C9 $2E $00 $C9
	
_LABEL_44D_:	
		ld a, (_RAM_C0C7_)
		sub $40
		ret nc
		ld bc, $C007
		ld hl, (_RAM_C0C7_)
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_LABEL_45F_:	
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
	
_LABEL_494_:	
		ld hl, _RAM_C000_
		ld (hl), $00
-:	
		ld hl, _RAM_C000_
		bit 0, (hl)
		jr z, -
		ret
	
	; Data from 4A1 to 4F5 (85 bytes)
	.db $2A $03 $C0 $C9 $3A $05 $C0 $2F $4F $3A $06 $C0 $2F $47 $3A $03
	.db $C0 $A1 $6F $3A $04 $C0 $A0 $67 $C9 $3A $03 $C0 $FD $21 $05 $C0
	.db $FD $A6 $00 $6F $3A $04 $C0 $FD $21 $05 $C0 $FD $A6 $01 $67 $C9
	.db $3A $03 $C0 $2F $4F $3A $04 $C0 $2F $47 $79 $FD $21 $05 $C0 $FD
	.db $A6 $00 $6F $78 $FD $21 $05 $C0 $FD $A6 $01 $67 $C9 $FD $21 $01
	.db $C0 $FD $6E $00 $C9
	
_LABEL_4F6_:	
		ld hl, _RAM_C001_
		ld (hl), $00
		ret
	
	; Data from 4FC to 523 (40 bytes)
	.db $21 $02 $00 $39 $7E $32 $C8 $C0 $21 $03 $00 $39 $7E $32 $C9 $C0
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	.db $DB $7E $6F $C9 $DB $7F $6F $C9
	
_LABEL_524_:	
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
	
_LABEL_557_:	
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
	
; Data from 56B to 570 (6 bytes)	
_DATA_56B_:	
	.db $04 $20 $08 $00 $08 $00
	
_LABEL_571_:	
		ld bc, $0006
		ld a, b
		or c
		jr z, +
		ld de, _RAM_C0CA_
		ld hl, _DATA_56B_
		ldir
+:	
		ret
	
	; Data from 581 to 7F8B (31243 bytes)
	.dsb 31243, $00
	
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
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $72 $97 $99 $99 $00 $4C
	