
; This disassembly was created using Emulicious (http://www.emulicious.net)

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
	jp _SMS_isr

; Data from 3B to 65 (43 bytes)
.dsb 43, $00

_LABEL_66_:
	jp _SMS_nmi_isr

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
	ld hl, VDPBlank	; VDPBlank = $C000
	ld (hl), a
	ld de, PauseRequested	; PauseRequested = $C001
	ld bc, $1FF0
	ldir
	call gsinit
	call _SMS_init
	ei
	call A$main$87
	jp _exit

; Data from 99 to 118 (128 bytes)
_OUTI128:
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3

; Data from 119 to 158 (64 bytes)
_OUTI64:
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3

; Data from 159 to 198 (64 bytes)
_OUTI32:
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3

; Data from 199 to 1FF (103 bytes)
_outi_block:
.db $C9
.dsb 102, $00

; Data from 200 to 203 (4 bytes)
__clock:
.db $3E $02 $CF $C9

_exit:
	ld a, $00
	rst $08	; _LABEL_8_
-:
	halt
	jr -

A$main$66:
C$main.c$3$0$0:
C$main.c$5$1$49:
G$stevepro$0$0:
_stevepro:
	ld hl, $0F00
	push hl
	call _SMS_setSpritePaletteColor
	pop af
	ret

A$main$87:
C$main.c$10$1$51:
C$main.c$8$1$49:
G$main$0$0:
_main:
	call A$main$66
A$main$92:
C$main.c$13$3$53:
	call _SMS_waitForVBlank
	jr A$main$92

; Data from 21B to 22B (17 bytes)
Fmain$__str_0$0$0:
.db $53 $74 $65 $76 $65 $50 $72 $6F $20 $53 $74 $75 $64 $69 $6F $73
.db $00

; Data from 22C to 237 (12 bytes)
Fmain$__str_1$0$0:
.db $48 $65 $6C $6C $6F $20 $57 $6F $72 $6C $64 $00

; Data from 238 to 26E (55 bytes)
Fmain$__str_2$0$0:
.db $53 $69 $6D $70 $6C $65 $20 $53 $65 $67 $61 $20 $4D $61 $73 $74
.db $65 $72 $20 $53 $79 $73 $74 $65 $6D $20 $64 $65 $6D $6F $20 $74
.db $6F $20 $72 $75 $6E $20 $6F $6E $20 $72 $65 $61 $6C $20 $68 $61
.db $72 $64 $77 $61 $72 $65 $00

_SMS_init:
	ld c, $00
-:
	ld hl, _VDPReg_init	; _VDPReg_init = $02BB
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
	call _SMS_initSprites
	call _SMS_finalizeSprites
	call _SMS_copySpritestoSAT
	call _SMS_resetPauseRequest
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
	ld hl, VDPType	; VDPType = $C002
	ld (hl), $80
	ret

+:
	ld hl, VDPType	; VDPType = $C002
	ld (hl), $40
	ret

; Data from 2BB to 2C5 (11 bytes)
_VDPReg_init:
.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF

; Data from 2C6 to 2CD (8 bytes)
_SMS_VDPType:
.db $FD $21 $02 $C0 $FD $6E $00 $C9

; Data from 2CE to 2E4 (23 bytes)
_SMS_VDPturnOnFeature:
.db $4D $5C $16 $00 $21 $CA $C0 $19 $7E $B1 $4F $71 $F3 $79 $D3 $BF
.db $7B $CB $FF $D3 $BF $FB $C9

; Data from 2E5 to 2FD (25 bytes)
_SMS_VDPturnOffFeature:
.db $7D $5C $2F $47 $16 $00 $21 $CA $C0 $19 $7E $A0 $4F $71 $F3 $79
.db $D3 $BF $7B $CB $FF $D3 $BF $FB $C9

; Data from 2FE to 30C (15 bytes)
_SMS_setBGScrollX:
.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $88 $D3 $BF $FB $C9

; Data from 30D to 31B (15 bytes)
_SMS_setBGScrollY:
.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $89 $D3 $BF $FB $C9

; Data from 31C to 32A (15 bytes)
_SMS_setBackdropColor:
.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $87 $D3 $BF $FB $C9

; Data from 32B to 342 (24 bytes)
_SMS_useFirstHalfTilesforSprites:
.db $21 $02 $00 $39 $CB $46 $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79
.db $D3 $BF $3E $86 $D3 $BF $FB $C9

; Data from 343 to 397 (85 bytes)
_SMS_setSpriteMode:
.db $21 $02 $00 $39 $7E $0F $30 $0E $21 $02 $01 $CD $CE $02 $21 $10
.db $00 $22 $CC $C0 $18 $0C $21 $02 $01 $CD $E5 $02 $21 $08 $00 $22
.db $CC $C0 $21 $02 $00 $39 $7E $E6 $02 $28 $1D $21 $01 $01 $CD $CE
.db $02 $21 $10 $00 $22 $CE $C0 $FD $21 $CC $C0 $FD $CB $00 $26 $FD
.db $21 $CC $C0 $FD $CB $01 $16 $C9 $21 $01 $01 $CD $E5 $02 $21 $08
.db $00 $22 $CE $C0 $C9

; Data from 398 to 3AD (22 bytes)
_SMS_setBGPaletteColor:
.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $C0 $D3 $BF $FB $21 $03
.db $00 $39 $7E $D3 $BE $C9

_SMS_setSpritePaletteColor:
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

; Data from 3C5 to 3CD (9 bytes)
_SMS_setNextTileatAddr:
.db $0E $BF $F3 $ED $69 $ED $61 $FB $C9

; Data from 3CE to 3D7 (10 bytes)
_SMS_setTile:
.db $7D $D3 $BE $7C $D6 $00 $00 $D3 $BE $C9

; Data from 3D8 to 3EB (20 bytes)
_SMS_loadBGPalette:
.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
.db $A3 $20 $FC $C9

; Data from 3EC to 3FF (20 bytes)
_SMS_loadSpritePalette:
.db $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
.db $A3 $20 $FC $C9

_SMS_initSprites:
	ld hl, SpriteNextFree	; SpriteNextFree = $C0C7
	ld (hl), $00
	ret

; Data from 406 to 44C (71 bytes)
_SMS_addSprite:
.db $3A $C7 $C0 $D6 $40 $30 $3D $21 $03 $00 $39 $4E $0D $79 $D6 $D0
.db $28 $2F $21 $07 $C0 $ED $5B $C7 $C0 $16 $00 $19 $71 $3A $C7 $C0
.db $87 $4F $21 $47 $C0 $06 $00 $09 $FD $21 $02 $00 $FD $39 $FD $7E
.db $00 $77 $23 $FD $21 $04 $00 $FD $39 $FD $7E $00 $77 $21 $C7 $C0
.db $34 $2E $01 $C9 $2E $00 $C9

_SMS_finalizeSprites:
	ld a, (SpriteNextFree)	; SpriteNextFree = $C0C7
	sub $40
	ret nc
	ld bc, SpriteTableY	; SpriteTableY = $C007
	ld hl, (SpriteNextFree)	; SpriteNextFree = $C0C7
	ld h, $00
	add hl, bc
	ld (hl), $D0
	ret

_SMS_copySpritestoSAT:
	di
	ld a, $00
	out (Port_VDPAddress), a
	ld a, $7F
	out (Port_VDPAddress), a
	ei
	ld bc, SpriteTableY	; SpriteTableY = $C007
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
	ld bc, SpriteTableXN	; SpriteTableXN = $C047
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

_SMS_waitForVBlank:
	ld hl, VDPBlank	; VDPBlank = $C000
	ld (hl), $00
-:
	ld hl, VDPBlank	; VDPBlank = $C000
	bit 0, (hl)
	jr z, -
	ret

; Data from 4A1 to 4A4 (4 bytes)
_SMS_getKeysStatus:
.db $2A $03 $C0 $C9

; Data from 4A5 to 4B9 (21 bytes)
_SMS_getKeysPressed:
.db $3A $05 $C0 $2F $4F $3A $06 $C0 $2F $47 $3A $03 $C0 $A1 $6F $3A
.db $04 $C0 $A0 $67 $C9

; Data from 4BA to 4D0 (23 bytes)
_SMS_getKeysHeld:
.db $3A $03 $C0 $FD $21 $05 $C0 $FD $A6 $00 $6F $3A $04 $C0 $FD $21
.db $05 $C0 $FD $A6 $01 $67 $C9

; Data from 4D1 to 4ED (29 bytes)
_SMS_getKeysReleased:
.db $3A $03 $C0 $2F $4F $3A $04 $C0 $2F $47 $79 $FD $21 $05 $C0 $FD
.db $A6 $00 $6F $78 $FD $21 $05 $C0 $FD $A6 $01 $67 $C9

; Data from 4EE to 4F5 (8 bytes)
_SMS_queryPauseRequested:
.db $FD $21 $01 $C0 $FD $6E $00 $C9

_SMS_resetPauseRequest:
	ld hl, PauseRequested	; PauseRequested = $C001
	ld (hl), $00
	ret

; Data from 4FC to 50C (17 bytes)
_SMS_setLineInterruptHandler:
.db $21 $02 $00 $39 $7E $32 $C8 $C0 $21 $03 $00 $39 $7E $32 $C9 $C0
.db $C9

; Data from 50D to 51B (15 bytes)
_SMS_setLineCounter:
.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9

; Data from 51C to 51F (4 bytes)
_SMS_getVCount:
.db $DB $7E $6F $C9

; Data from 520 to 523 (4 bytes)
_SMS_getHCount:
.db $DB $7F $6F $C9

_SMS_isr:
	push af
	push hl
	in a, (Port_VDPStatus)
	rlca
	jr nc, +
	ld hl, VDPBlank	; VDPBlank = $C000
	ld (hl), $01
	ld hl, (KeysStatus)	; KeysStatus = $C003
	ld (PreviousKeysStatus), hl	; PreviousKeysStatus = $C005
	in a, (Port_IOPort1)
	cpl
	ld hl, KeysStatus	; KeysStatus = $C003
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
	ld hl, (SMS_theLineInterruptHandler)	; SMS_theLineInterruptHandler = $C0C8
	call ___sdcc_call_hl
	pop iy
	pop de
	pop bc
++:
	pop hl
	pop af
	ei
	reti

_SMS_nmi_isr:
	push af
	push bc
	push de
	push hl
	push iy
	ld hl, PauseRequested	; PauseRequested = $C001
	ld (hl), $01
	pop iy
	pop hl
	pop de
	pop bc
	pop af
	retn

___sdcc_call_hl:
	jp (hl)

; Data from 56B to 570 (6 bytes)
_DATA_56B_:
.db $04 $20 $08 $00 $08 $00

gsinit:
	ld bc, $0006
	ld a, b
	or c
	jr z, +
	ld de, VDPReg	; VDPReg = $C0CA
	ld hl, _DATA_56B_
	ldir
+:
	ret

; Data from 581 to 7F8B (31243 bytes)
.dsb 31243, $00

; Data from 7F8C to 7FC2 (55 bytes)
G$__SMS__SDSC_descr$0$0:
___SMS__SDSC_descr:
.db $53 $69 $6D $70 $6C $65 $20 $53 $65 $67 $61 $20 $4D $61 $73 $74
.db $65 $72 $20 $53 $79 $73 $74 $65 $6D $20 $64 $65 $6D $6F $20 $74
.db $6F $20 $72 $75 $6E $20 $6F $6E $20 $72 $65 $61 $6C $20 $68 $61
.db $72 $64 $77 $61 $72 $65 $00

; Data from 7FC3 to 7FCE (12 bytes)
G$__SMS__SDSC_name$0$0:
___SMS__SDSC_name:
.db $48 $65 $6C $6C $6F $20 $57 $6F $72 $6C $64 $00

; Data from 7FCF to 7FDF (17 bytes)
G$__SMS__SDSC_author$0$0:
___SMS__SDSC_author:
.db $53 $74 $65 $76 $65 $50 $72 $6F $20 $53 $74 $75 $64 $69 $6F $73
.db $00

; Data from 7FE0 to 7FEF (16 bytes)
G$__SMS__SDSC_signature$0$0:
___SMS__SDSC_signature:
.db $53 $44 $53 $43 $01 $00 $15 $09 $17 $20 $CF $7F $C3 $7F $8C $7F

; Data from 7FF0 to 7FFF (16 bytes)
G$__SMS__SEGA_signature$0$0:
___SMS__SEGA_signature:
.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $7E $97 $99 $99 $00 $4C
