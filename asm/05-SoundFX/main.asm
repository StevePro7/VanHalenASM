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
_RAM_C001_ dw	
_RAM_C003_ dw	
_RAM_C005_ dw	
_RAM_C007_ db	
_RAM_C008_ db	
_RAM_C009_ db	
_RAM_C00A_ db	
_RAM_C00B_ db	
_RAM_C00C_ dw	
_RAM_C00E_ db	
_RAM_C00F_ db	
_RAM_C010_ db	
_RAM_C011_ db	
_RAM_C012_ db	
_RAM_C013_ db	
_RAM_C014_ db	
_RAM_C015_ db	
_RAM_C016_ db	
_RAM_C017_ db	
_RAM_C018_ db	
_RAM_C019_ db	
_RAM_C01A_ dw	
_RAM_C01C_ dw	
_RAM_C01E_ dw	
_RAM_C020_ db	
_RAM_C021_ db	
_RAM_C022_ db	
_RAM_C023_ dw	
_RAM_C025_ db	
_RAM_C026_ db	
_RAM_C027_ db	
_RAM_C028_ db	
_RAM_C029_ dw	
_RAM_C02B_ dw	
_RAM_C02D_ db	
.ende	
	
.enum $C06D export	
_RAM_C06D_ db	
.ende	
	
.enum $C0ED export	
_RAM_C0ED_ db	
_RAM_C0EE_ dw	
_RAM_C0F0_ db	
.ende	
	
.enum $C110 export	
_RAM_C110_ dw	
_RAM_C112_ dw	
.ende	
	
.enum $FFFC export	
_RAM_FFFC_ db	
.ende	
	
; Ports	
.define Port_PSG $7F	
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
	
_LABEL_6_:	
		nop
		nop
_LABEL_8_:	
		ld c, Port_VDPAddress
		di
		out (c), l
		out (c), h
		ei
		ret
	
_LABEL_11_:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld a, l
		out (Port_VDPData), a
		ld a, h
		sub $00
		nop
		out (Port_VDPData), a
		ret
	
	; Data from 22 to 37 (22 bytes)
	.dsb 22, $00
	
_LABEL_38_:	
		jp _LABEL_1138_
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_LABEL_66_:	
		jp _LABEL_116E_
	
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
		call _LABEL_1283_
		call _LABEL_EA8_
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
		call _LABEL_EA8_
		ld hl, $0140
		call _LABEL_F26_
		call _engine_content_manager_load_tiles
		ld hl, $0A0A
		push hl
		ld hl, $0253
		push hl
		call _engine_font_manager_draw_text
		pop af
		pop af
		ld hl, $0140
		call _LABEL_F0F_
-:	
		call _engine_input_manager_update
		ld a, $02
		push af
		inc sp
		call _engine_input_manager_hold
		inc sp
		ld a, l
		or a
		jr z, +
		ld hl, $0B0A
		push hl
		ld hl, $0259
		push hl
		call _engine_font_manager_draw_text
		pop af
		pop af
		call _engine_audio_manager_sfx_play
+:	
		call _LABEL_10A0_
		call _LABEL_6B5_
		call _LABEL_7CE_
		jr -
	
	; Data from 253 to 2B2 (96 bytes)
	.db $48 $45 $4C $4C $4F $00 $54 $48 $45 $52 $45 $00 $53 $74 $65 $76
	.db $65 $50 $72 $6F $20 $53 $74 $75 $64 $69 $6F $73 $00 $48 $65 $6C
	.db $6C $6F $20 $57 $6F $72 $6C $64 $00 $53 $69 $6D $70 $6C $65 $20
	.db $53 $65 $67 $61 $20 $4D $61 $73 $74 $65 $72 $20 $53 $79 $73 $74
	.db $65 $6D $20 $64 $65 $6D $6F $20 $74 $6F $20 $72 $75 $6E $20 $6F
	.db $6E $20 $72 $65 $61 $6C $20 $68 $61 $72 $64 $77 $61 $72 $65 $00
	
_LABEL_2B3_:	
		ld a, (_RAM_C000_)
		or a
		ret z
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, (_RAM_C015_)
		or a
		jr nz, +
		ld a, $DF
		out (Port_PSG), a
+:	
		ld a, (_RAM_C016_)
		or a
		jr nz, +
		ld a, $FF
		out (Port_PSG), a
+:	
		ld hl, _RAM_C000_
		ld (hl), $00
		ret
	
	; Data from 2DA to 56E (661 bytes)
	.db $3A $00 $C0 $B7 $C0 $3A $0E $C0 $F6 $90 $D3 $7F $3A $0F $C0 $F6
	.db $B0 $D3 $7F $3A $15 $C0 $B7 $20 $17 $3A $12 $C0 $E6 $0F $F6 $C0
	.db $D3 $7F $3A $13 $C0 $E6 $3F $D3 $7F $3A $10 $C0 $F6 $D0 $D3 $7F
	.db $3A $16 $C0 $B7 $20 $10 $3A $14 $C0 $E6 $0F $F6 $E0 $D3 $7F $3A
	.db $11 $C0 $F6 $F0 $D3 $7F $21 $00 $C0 $36 $01 $C9 $CD $B3 $02 $21
	.db $08 $C0 $36 $01 $D1 $C1 $C5 $D5 $ED $43 $01 $C0 $ED $43 $03 $C0
	.db $ED $43 $05 $C0 $21 $07 $C0 $36 $00 $21 $0B $C0 $36 $00 $21 $09
	.db $C0 $36 $9F $21 $00 $C0 $36 $01 $C9 $21 $08 $C0 $36 $00 $C9 $C1
	.db $E1 $E5 $C5 $E5 $CD $26 $03 $F1 $21 $08 $C0 $36 $00 $C9 $FD $21
	.db $00 $C0 $FD $6E $00 $C9 $3E $9F $D3 $7F $3E $BF $D3 $7F $3E $DF
	.db $D3 $7F $3E $FF $D3 $7F $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $F5
	.db $FD $21 $0A $C0 $FD $7E $00 $DD $77 $FE $AF $DD $77 $FF $FD $4E
	.db $00 $3A $00 $C0 $B7 $28 $58 $3A $0E $C0 $E6 $0F $5F $16 $00 $E1
	.db $E5 $19 $3E $0F $BD $3E $00 $9C $E2 $B7 $03 $EE $80 $F2 $BF $03
	.db $11 $0F $00 $18 $09 $3A $0E $C0 $E6 $0F $81 $5F $17 $9F $7B $F6
	.db $90 $D3 $7F $3A $0F $C0 $E6 $0F $5F $16 $00 $E1 $E5 $19 $3E $0F
	.db $BD $3E $00 $9C $E2 $E3 $03 $EE $80 $F2 $EB $03 $11 $0F $00 $18
	.db $09 $3A $0F $C0 $E6 $0F $81 $5F $17 $9F $7B $F6 $B0 $D3 $7F $3A
	.db $15 $C0 $B7 $28 $09 $3A $17 $C0 $F6 $D0 $D3 $7F $18 $32 $3A $00
	.db $C0 $B7 $28 $2C $3A $10 $C0 $E6 $0F $5F $16 $00 $E1 $E5 $19 $3E
	.db $0F $BD $3E $00 $9C $E2 $24 $04 $EE $80 $F2 $2C $04 $11 $0F $00
	.db $18 $09 $3A $10 $C0 $E6 $0F $81 $5F $17 $9F $7B $F6 $D0 $D3 $7F
	.db $3A $16 $C0 $B7 $28 $09 $3A $18 $C0 $F6 $F0 $D3 $7F $18 $32 $3A
	.db $00 $C0 $B7 $28 $2C $3A $11 $C0 $E6 $0F $6F $26 $00 $D1 $D5 $19
	.db $3E $0F $BD $3E $00 $9C $E2 $65 $04 $EE $80 $F2 $6D $04 $01 $0F
	.db $00 $18 $09 $3A $11 $C0 $E6 $0F $81 $4F $17 $9F $79 $F6 $F0 $D3
	.db $7F $DD $F9 $DD $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $DD
	.db $7E $04 $32 $0A $C0 $3A $00 $C0 $B7 $CA $6A $05 $3A $0E $C0 $E6
	.db $0F $4F $1E $00 $FD $21 $0A $C0 $FD $7E $00 $DD $77 $FE $AF $DD
	.db $77 $FF $79 $DD $86 $FE $47 $7B $DD $8E $FF $5F $FD $4E $00 $3E
	.db $0F $B8 $3E $00 $9B $E2 $C4 $04 $EE $80 $F2 $CC $04 $11 $0F $00
	.db $18 $09 $3A $0E $C0 $E6 $0F $81 $5F $17 $9F $7B $F6 $90 $D3 $7F
	.db $3A $0F $C0 $E6 $0F $5F $16 $00 $E1 $E5 $19 $3E $0F $BD $3E $00
	.db $9C $E2 $F0 $04 $EE $80 $F2 $F8 $04 $11 $0F $00 $18 $09 $3A $0F
	.db $C0 $E6 $0F $81 $5F $17 $9F $7B $F6 $B0 $D3 $7F $3A $15 $C0 $B7
	.db $20 $2C $3A $10 $C0 $E6 $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD
	.db $3E $00 $9C $E2 $22 $05 $EE $80 $F2 $2A $05 $11 $0F $00 $18 $09
	.db $3A $10 $C0 $E6 $0F $81 $5F $17 $9F $7B $F6 $D0 $D3 $7F $3A $16
	.db $C0 $B7 $20 $2C $3A $11 $C0 $E6 $0F $6F $26 $00 $D1 $D5 $19 $3E
	.db $0F $BD $3E $00 $9C $E2 $54 $05 $EE $80 $F2 $5C $05 $01 $0F $00
	.db $18 $09 $3A $11 $C0 $E6 $0F $81 $4F $17 $9F $79 $F6 $F0 $D3 $7F
	.db $DD $F9 $DD $E1 $C9
	
_LABEL_56F_:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (_RAM_C019_)
		or a
		jp z, _LABEL_634_
		ld iy, _RAM_C00A_
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (_RAM_C015_)
		or a
		jr z, _LABEL_5E3_
		ld a, (_RAM_C000_)
		or a
		jr z, _LABEL_5DA_
		ld a, (_RAM_C012_)
		and $0F
		or $C0
		out (Port_PSG), a
		ld a, (_RAM_C013_)
		and $3F
		out (Port_PSG), a
		ld a, (_RAM_C010_)
		and $0F
		ld e, a
		ld d, $00
		pop hl
		push hl
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld de, $000F
		jr ++
	
+:	
		ld a, (_RAM_C010_)
		and $0F
		add a, c
		ld e, a
		rla
		sbc a, a
++:	
		ld a, e
		or $D0
		out (Port_PSG), a
		jr +
	
_LABEL_5DA_:	
		ld a, $DF
		out (Port_PSG), a
+:	
		ld hl, _RAM_C015_
		ld (hl), $00
_LABEL_5E3_:	
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_62F_
		ld a, (_RAM_C000_)
		or a
		jr z, +++
		ld a, (_RAM_C014_)
		and $0F
		or $E0
		out (Port_PSG), a
		ld a, (_RAM_C011_)
		and $0F
		ld l, a
		ld h, $00
		pop de
		push de
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld bc, $000F
		jr ++
	
+:	
		ld a, (_RAM_C011_)
		and $0F
		add a, c
		ld c, a
		rla
		sbc a, a
++:	
		ld a, c
		or $F0
		out (Port_PSG), a
		jr ++++
	
+++:	
		ld a, $FF
		out (Port_PSG), a
++++:	
		ld hl, _RAM_C016_
		ld (hl), $00
_LABEL_62F_:	
		ld hl, _RAM_C019_
		ld (hl), $00
_LABEL_634_:	
		ld sp, ix
		pop ix
		ret
	
_LABEL_639_:	
		call _LABEL_56F_
		ld hl, _RAM_C021_
		ld (hl), $00
		pop de
		pop bc
		push bc
		push de
		ld (_RAM_C01A_), bc
		ld (_RAM_C01C_), bc
		ld (_RAM_C01E_), bc
		ld hl, _RAM_C020_
		ld (hl), $00
		ld hl, _RAM_C022_
		ld (hl), $00
		ld hl, $0004
		add hl, sp
		ld c, (hl)
		bit 0, c
		jr z, +
		ld de, $0001
		jr ++
	
+:	
		ld de, $0000
++:	
		ld hl, _RAM_C015_
		ld (hl), e
		bit 1, c
		jr z, +
		ld bc, $0001
		jr ++
	
+:	
		ld bc, $0000
++:	
		ld hl, _RAM_C016_
		ld (hl), c
		ld hl, _RAM_C019_
		ld (hl), $01
		ret
	
	; Data from 686 to 6B4 (47 bytes)
	.db $21 $21 $C0 $36 $00 $C9 $FD $21 $19 $C0 $FD $6E $00 $C9 $FD $21
	.db $04 $00 $FD $39 $FD $7E $00 $F5 $33 $FD $2B $FD $2B $FD $6E $00
	.db $FD $66 $01 $E5 $CD $39 $06 $F1 $33 $21 $21 $C0 $36 $01 $C9
	
_LABEL_6B5_:	
		ld a, (_RAM_C000_)
		or a
		ret z
		ld a, (_RAM_C007_)
		or a
		jp nz, _LABEL_749_
		ld hl, (_RAM_C003_)
_LABEL_6C4_:	
		ld b, (hl)
		inc hl
		ld a, (_RAM_C00B_)
		or a
		jr z, +
		dec a
		ld (_RAM_C00B_), a
		jr nz, +
		ld hl, (_RAM_C00C_)
+:	
		ld a, b
		cp $80
		jr c, _LABEL_74E_
		ld (_RAM_C009_), a
		bit 4, a
		jr nz, ++
		bit 6, a
		jp z, _LABEL_775_
		bit 5, a
		jr z, +
		ld (_RAM_C014_), a
		ld a, (_RAM_C016_)
		or a
		jp nz, _LABEL_6C4_
		ld a, (_RAM_C014_)
		and $03
		cp $03
		jr nz, _LABEL_774_
		ld a, (_RAM_C019_)
		or a
		jr z, _LABEL_774_
		ld (_RAM_C016_), a
		ld a, $FF
		out (Port_PSG), a
		jp _LABEL_6C4_
	
+:	
		ld (_RAM_C012_), a
		ld a, (_RAM_C015_)
		or a
		jr z, _LABEL_774_
		jp _LABEL_6C4_
	
++:	
		bit 6, a
		jr nz, ++
		bit 5, a
		jr z, +
		ld (_RAM_C00F_), a
		jp _LABEL_77B_
	
+:	
		ld (_RAM_C00E_), a
		jp _LABEL_77B_
	
++:	
		bit 5, a
		jr z, +
		ld (_RAM_C011_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_77A_
		jp _LABEL_6C4_
	
+:	
		ld (_RAM_C010_), a
		ld a, (_RAM_C015_)
		or a
		jr z, _LABEL_77A_
		jp _LABEL_6C4_
	
_LABEL_749_:	
		dec a
		ld (_RAM_C007_), a
		ret
	
_LABEL_74E_:	
		cp $40
		jr c, +
		ld a, (_RAM_C009_)
		jp +++
	
+:	
		cp $38
		jr z, +
		jr c, ++
		and $07
		ld (_RAM_C007_), a
+:	
		ld (_RAM_C003_), hl
		ret
	
++:	
		cp $08
		jr nc, _LABEL_7AD_
		cp $00
		jr z, +++++
		cp $01
		jr z, ++++
		ret
	
_LABEL_774_:	
		ld a, b
_LABEL_775_:	
		out (Port_PSG), a
		jp _LABEL_6C4_
	
_LABEL_77A_:	
		ld a, b
_LABEL_77B_:	
		ld c, a
		and $0F
		ld b, a
		ld a, (_RAM_C00A_)
		add a, b
		cp $0F
		jr c, +
		ld a, $0F
+:	
		ld b, a
		ld a, c
		and $F0
		or b
		out (Port_PSG), a
		jp _LABEL_6C4_
	
+++:	
		bit 6, a
		jr nz, ++++++
		jp _LABEL_774_
	
++++:	
		ld (_RAM_C005_), hl
		jp _LABEL_6C4_
	
+++++:	
		ld a, (_RAM_C008_)
		or a
		jp z, _LABEL_2B3_
		ld hl, (_RAM_C005_)
		jp _LABEL_6C4_
	
_LABEL_7AD_:	
		sub $04
		ld (_RAM_C00B_), a
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (_RAM_C00C_), hl
		ld hl, (_RAM_C001_)
		add hl, bc
		jp _LABEL_6C4_
	
++++++:	
		ld a, b
		ld (_RAM_C013_), a
		ld a, (_RAM_C015_)
		or a
		jr z, _LABEL_774_
		jp _LABEL_6C4_
	
	; Data from 7CD to 7CD (1 bytes)
	.db $C9
	
_LABEL_7CE_:	
		ld a, (_RAM_C019_)
		or a
		ret z
		ld a, (_RAM_C020_)
		or a
		jp nz, +++
		ld hl, (_RAM_C01C_)
_LABEL_7DD_:	
		ld b, (hl)
		inc hl
		ld a, (_RAM_C022_)
		or a
		jr z, +
		dec a
		ld (_RAM_C022_), a
		jr nz, +
		ld hl, (_RAM_C023_)
+:	
		ld a, b
		cp $40
		jp c, ++++
		bit 4, a
		jr z, ++
		bit 5, a
		jr nz, +
		ld (_RAM_C017_), a
		jr ++
	
+:	
		ld (_RAM_C018_), a
++:	
		out (Port_PSG), a
		jp _LABEL_7DD_
	
+++:	
		dec a
		ld (_RAM_C020_), a
		ret
	
++++:	
		cp $38
		jr z, +
		jr c, ++
		and $07
		ld (_RAM_C020_), a
+:	
		ld (_RAM_C01C_), hl
		ret
	
++:	
		cp $08
		jr nc, +++
		cp $00
		jr z, ++
		cp $01
		jr z, +
		ret
	
+:	
		ld (_RAM_C01E_), hl
		jp _LABEL_7DD_
	
++:	
		ld a, (_RAM_C021_)
		or a
		jp z, _LABEL_56F_
		ld hl, (_RAM_C01E_)
		ld (_RAM_C01C_), hl
		jp _LABEL_7DD_
	
+++:	
		sub $04
		ld (_RAM_C022_), a
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (_RAM_C023_), hl
		ld hl, (_RAM_C01A_)
		add hl, bc
		jp _LABEL_7DD_
	
	; Data from 853 to 853 (1 bytes)
	.db $C9
	
_engine_audio_manager_sfx_play:	
		ld a, $01
		push af
		inc sp
		ld hl, _sfx_right_psg	; _sfx_right_psg = $0E24
		push hl
		call _LABEL_639_
		pop af
		inc sp
		ret
	
_engine_content_manager_load_tiles:	
		ld hl, $0000
		push hl
		ld hl, _font__tiles__psgcompr	; _font__tiles__psgcompr = $0B3A
		push hl
		call _LABEL_1182_
		pop af
		pop af
		ld hl, _font__palette__bin	; _font__palette__bin = $0AAA
		jp _LABEL_FDE_
	
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
		ld a, h
		or $78
		ld b, a
		ld l, (ix+5)
		ld h, $00
		add hl, hl
		ld a, l
		or c
		ld l, a
		ld a, h
		or b
		ld h, a
		call _LABEL_6_
		ld hl, _font__tilemap__bin	; _font__tilemap__bin = $0ABA
		ld l, (hl)
		ld h, $00
		ld d, $00
		add hl, de
		pop ix
		jp _LABEL_11_
	
_engine_font_manager_draw_text:	
		push ix
		ld ix, $0000
		add ix, sp
		dec sp
		ld a, (ix+6)
		ld (ix-1), a
		ld e, $00
_LABEL_8C1_:	
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
		ld a, h
		or $78
		ld b, a
		ld l, (ix-1)
		inc (ix-1)
		ld h, $00
		add hl, hl
		ld a, l
		or c
		ld l, a
		ld a, h
		or b
		ld h, a
		call _LABEL_6_
		ld hl, _font__tilemap__bin	; _font__tilemap__bin = $0ABA
		ld c, (hl)
		ld b, $00
		ld a, d
		ld l, a
		rla
		sbc a, a
		ld h, a
		add hl, bc
		call _LABEL_11_
		inc e
		jr _LABEL_8C1_
	
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
_LABEL_91C_:	
		ld hl, $000A
		push hl
		ld l, (ix+4)
		ld h, (ix+5)
		push hl
		call _LABEL_E67_
		pop af
		pop af
		push hl
		push hl
		ld de, $000A
		push de
		ld e, (ix+4)
		ld d, (ix+5)
		push de
		call _LABEL_1270_
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
		ld a, h
		or $78
		ld b, a
		ld l, (ix-1)
		dec (ix-1)
		ld h, $00
		add hl, hl
		ld a, l
		or c
		ld l, a
		ld a, h
		or b
		ld h, a
		call _LABEL_6_
		ld hl, _font__tilemap__bin	; _font__tilemap__bin = $0ABA
		ld c, (hl)
		ld b, $00
		ld a, d
		rla
		sbc a, a
		ld h, a
		ld l, d
		add hl, bc
		call _LABEL_11_
		inc (ix-2)
		ld a, (ix-2)
		sub $05
		jr c, _LABEL_91C_
		ld sp, ix
		pop ix
		ret
	
_engine_input_manager_update:	
		ld hl, (_RAM_C110_)
		ld (_RAM_C112_), hl
		call _LABEL_10AD_
		ld (_RAM_C110_), hl
		ret
	
_engine_input_manager_hold:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld iy, _RAM_C110_
		ld a, (iy+0)
		and c
		ld e, a
		ld a, (iy+1)
		and b
		or e
		jr z, +
		ld a, c
		ld iy, _RAM_C112_
		and (iy+0)
		ld c, a
		ld a, b
		and (iy+1)
		or c
		jr z, ++
+:	
		ld l, $00
		ret
	
++:	
		ld l, $01
		ret
	
_engine_input_manager_move:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld a, (_RAM_C110_)
		and c
		ld l, a
		ret
	
; Data from 9DF to 9EE (16 bytes)	
_cursor__palette__bin:	
	.db $00 $00 $15 $15 $2A $2A $15 $15 $2A $2A $2A $2A $3F $3F $3F $3F
	
; Data from 9EF to AA9 (187 bytes)	
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
	
; Data from AAA to AB9 (16 bytes)	
_font__palette__bin:	
	.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
	
; Data from ABA to B39 (128 bytes)	
_font__tilemap__bin:	
	.db $00 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
	.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E $00 $0F $00
	.db $10 $00 $11 $00 $12 $00 $13 $00 $14 $00 $15 $00 $16 $00 $17 $00
	.db $18 $00 $19 $00 $1A $00 $1B $00 $1C $00 $1D $00 $1E $00 $1F $00
	.db $20 $00 $21 $00 $22 $00 $23 $00 $24 $00 $25 $00 $26 $00 $27 $00
	.db $28 $00 $29 $00 $2A $00 $2B $00 $2C $00 $2D $00 $2E $00 $2F $00
	.db $30 $00 $31 $00 $32 $00 $33 $00 $34 $00 $35 $00 $36 $00 $37 $00
	.db $38 $00 $39 $00 $3A $00 $3B $00 $3C $00 $3D $00 $3E $00 $3F $00
	
; Data from B3A to DD0 (663 bytes)	
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
	
; Data from DD1 to DE0 (16 bytes)	
_sprite__palette__bin:	
	.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
	
; Data from DE1 to E00 (32 bytes)	
_sprite__tiles__psgcompr:	
	.db $02 $00 $32 $03 $0F $1F $3F $33 $61 $61 $73 $21 $F9 $6D $6D $33
	.db $7F $33 $38 $1C $8F $53 $A0 $50 $7F $3F $3F $1F $8F $D3 $E0 $70
	
; Data from E01 to E23 (35 bytes)	
_sfx_cheat_psg:	
	.db $CE $4B $D0 $3B $D1 $38 $CF $47 $08 $02 $00 $C7 $49 $0A $02 $00
	.db $09 $02 $00 $45 $D0 $3B $D1 $3B $D2 $3A $D3 $39 $D4 $39 $C3 $55
	.db $DF $3C $00
	
; Data from E24 to E43 (32 bytes)	
_sfx_right_psg:	
	.db $C5 $4D $D0 $3B $CE $48 $3B $C7 $44 $D5 $3A $CA $46 $3B $C5 $4D
	.db $DA $3A $09 $04 $00 $DB $3B $CA $46 $DD $3A $C0 $40 $DF $38 $00
	
; Data from E44 to E66 (35 bytes)	
_sfx_wrong_psg:	
	.db $C5 $4D $D0 $3B $C0 $4A $3B $C7 $49 $3B $CE $48 $D5 $3B $C5 $4D
	.db $3B $C0 $4A $3B $C7 $49 $DA $3B $CE $48 $3B $C0 $49 $3B $C0 $40
	.db $DF $3B $00
	
_LABEL_E67_:	
		pop af
		pop hl
		pop de
		push de
		push hl
		push af
		jr _LABEL_E79_
	
	; Data from E6F to E78 (10 bytes)
	.db $21 $03 $00 $39 $5E $2B $6E $26 $00 $54
	
_LABEL_E79_:	
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
	
_LABEL_EA8_:	
		ld hl, $0000
		push hl
		call _LABEL_FCA_
		pop af
		ld c, $00
-:	
		ld hl, _DATA_EFC_
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
		call _LABEL_100A_
		call _LABEL_1065_
		call _LABEL_1077_
		call _LABEL_110A_
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
		ld hl, _RAM_C028_
		ld (hl), $80
		ret
	
+:	
		ld hl, _RAM_C028_
		ld (hl), $40
		ret
	
; Data from EFC to F0E (19 bytes)	
_DATA_EFC_:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $28 $C0 $FD
	.db $6E $00 $C9
	
_LABEL_F0F_:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, $C114
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
	
_LABEL_F26_:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, $C114
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
	
	; Data from F3F to FC9 (139 bytes)
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $89
	.db $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9 $CB $45
	.db $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79 $D3 $BF $3E $86 $D3 $BF
	.db $FB $C9 $4D $CB $41 $28 $0F $C5 $21 $02 $01 $CD $0F $0F $C1 $21
	.db $16 $C1 $36 $10 $18 $0D $C5 $21 $02 $01 $CD $26 $0F $C1 $21 $16
	.db $C1 $36 $08 $CB $49 $28 $14 $21 $01 $01 $CD $0F $0F $21 $17 $C1
	.db $36 $10 $FD $21 $16 $C1 $FD $CB $00 $26 $C9 $21 $01 $01 $CD $26
	.db $0F $21 $17 $C1 $36 $08 $C9 $21 $02 $00 $39 $4E $06 $00 $21 $00
	.db $C0 $09 $CF $21 $03 $00 $39 $7E $D3 $BE $C9
	
_LABEL_FCA_:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, $C010
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
_LABEL_FDE_:	
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
	
	; Data from FF2 to 1009 (24 bytes)
	.db $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9 $7D $D3 $BE $C9
	
_LABEL_100A_:	
		ld hl, _RAM_C0ED_
		ld (hl), $00
		ret
	
	; Data from 1010 to 1064 (85 bytes)
	.db $3A $ED $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $2D $21 $ED $C0 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $ED $C0 $87 $4F $21 $6D $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $ED $C0 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	
_LABEL_1065_:	
		ld a, (_RAM_C0ED_)
		sub $40
		ret nc
		ld bc, $C02D
		ld hl, (_RAM_C0ED_)
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_LABEL_1077_:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, _RAM_C02D_
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
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld bc, _RAM_C06D_
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
	
_LABEL_10A0_:	
		ld hl, _RAM_C025_
		ld (hl), $00
-:	
		ld hl, _RAM_C025_
		bit 0, (hl)
		jr z, -
		ret
	
_LABEL_10AD_:	
		ld hl, (_RAM_C029_)
		ret
	
	; Data from 10B1 to 1109 (89 bytes)
	.db $FD $21 $2B $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $29 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9 $3A $29 $C0
	.db $FD $21 $2B $C0 $FD $A6 $00 $6F $3A $2A $C0 $FD $21 $2B $C0 $FD
	.db $A6 $01 $67 $C9 $FD $21 $29 $C0 $FD $7E $00 $2F $4F $FD $7E $01
	.db $2F $47 $79 $FD $21 $2B $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67
	.db $C9 $FD $21 $27 $C0 $FD $6E $00 $C9
	
_LABEL_110A_:	
		ld hl, _RAM_C027_
		ld (hl), $00
		ret
	
	; Data from 1110 to 1137 (40 bytes)
	.db $21 $02 $00 $39 $7E $32 $EE $C0 $21 $03 $00 $39 $7E $32 $EF $C0
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	.db $DB $7E $6F $C9 $DB $7F $6F $C9
	
_LABEL_1138_:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (_RAM_C026_), a
		rlca
		jr nc, +
		ld hl, _RAM_C025_
		ld (hl), $01
		ld hl, (_RAM_C029_)
		ld (_RAM_C02B_), hl
		in a, (Port_IOPort1)
		cpl
		ld hl, _RAM_C029_
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
		ld hl, (_RAM_C0EE_)
		call +++
		pop iy
		pop de
		pop bc
++:	
		pop hl
		pop af
		ei
		reti
	
_LABEL_116E_:	
		push af
		push bc
		push de
		push hl
		push iy
		ld hl, _RAM_C027_
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
+++:	
		jp (hl)
	
_LABEL_1182_:	
		ld iy, $0004
		add iy, sp
		ld l, (iy+0)
		ld h, (iy+1)
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		set 6, h
		rst $08	; _LABEL_8_
		pop bc
		pop ix
		push ix
		push bc
		ld c, (ix+0)
		inc ix
		ld b, (ix+0)
		inc ix
_LABEL_11A6_:	
		push bc
		ld b, $04
		ld de, _RAM_C0F0_
		ld c, (ix+0)
		inc ix
_LABEL_11B1_:	
		rlc c
		jr nc, _LABEL_11F8_
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
		ld iy, _RAM_C0F0_
		add iy, de
		ex de, hl
		cp $03
		jr c, _LABEL_1212_
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
	
_LABEL_11F8_:	
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
	
_LABEL_1212_:	
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
		jp nz, _LABEL_11B1_
		ld de, $0008
		ld c, e
		ld hl, _RAM_C0F0_
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
		jp nz, _LABEL_11A6_
		ret
	
	; Data from 1264 to 126F (12 bytes)
	.db $21 $03 $00 $39 $5E $2B $6E $CD $76 $0E $EB $C9
	
_LABEL_1270_:	
		pop af
		pop hl
		pop de
		push de
		push hl
		push af
		call _LABEL_E79_
		ex de, hl
		ret
	
; Data from 127B to 1282 (8 bytes)	
_DATA_127B_:	
	.db $00 $00 $00 $00 $04 $20 $08 $08
	
_LABEL_1283_:	
		ld bc, $0008
		ld a, b
		or c
		jr z, +
		ld de, _RAM_C110_
		ld hl, _DATA_127B_
		ldir
+:	
		ret
	
	; Data from 1293 to 7F8B (27897 bytes)
	.dsb 27897, $00
	
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
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $49 $6E $99 $99 $00 $4C
	