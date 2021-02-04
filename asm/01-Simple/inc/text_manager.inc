.section "text manager" free

engine_text_manager_write_text:
    ld a,$00
    out ($bf),a
    ld a,$38|$40
    out ($bf),a
    ; 2. Output tilemap data
    ld hl,Message
    ld bc,MessageEnd-Message  ; Counter for number of bytes to write
    WriteTextLoop:
        ld a,(hl)    ; Get data byte
        out ($be),a
        inc hl       ; Point to next letter
        dec bc
        ld a,b
        or c
        jp nz,WriteTextLoop

    ret
    
.ends