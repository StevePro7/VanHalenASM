.sdsctag 1.0,"Hello World","Simple Sega Master System demo to run on real hardware","StevePro Studios"

.include "memory.inc"
.include "variables.inc"


.bank 0 slot 0
.org $0000
;==============================================================
; Boot section
;==============================================================
    di              ; disable interrupts
    im 1            ; Interrupt mode 1
    jp _LABEL_70_         ; jump to main program

.org $0066
; Pause button handler
    ; Do nothing
    retn

; Main program
_LABEL_70_:
    ld sp, $dff0
    ld de, _RAM_FFFC_
    xor a
    ld (de), a
    ld b, $03
-:
    inc de
    ld (de),a
    inc a
    djnz -
    xor a
    ld hl, VDPBlank
    ld (hl), a
    ld de, PauseRequested
    ld bc, $1FF0
    ldir
    
    call gsinit
    call _SMS_init
    ei
    call main
    ;jp exit

    
    ; Infinite loop to stop program
Loop:
     jp Loop






_DATA_56B_:	
	.db $04 $20 $08 $00 $08 $00


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
        

gsinit:
    ld bc, $0006
    ld a, b
    or c
    jr z, +
    ld de, VDPReg
    ld hl, _DATA_56B_
    ldir
+:
    ret
    
    
_SMS_initSprites:
    ld hl, SpriteNextFree
    ld (hl), $00
    ret
    

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

_SMS_resetPauseRequest:	
		ld hl, PauseRequested	; PauseRequested = $C001
		ld (hl), $00
		ret