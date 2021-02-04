.section "VRAM manager" free

engine_vram_manager_load_vdpreg:
    ;==============================================================
    ; Set up VDP registers
    ;==============================================================
    ld hl,VdpData
    ld b,VdpDataEnd-VdpData
    ld c,$bf
    otir
    ret


engine_vram_manager_clear_vram:

    ld a,$00
    out ($bf),a
    ld a,$40
    out ($bf),a
    ; 2. Output 16KB of zeroes
    ld bc, $4000    ; Counter for 16KB of VRAM
    ClearVRAMLoop:
        ld a,$00    ; Value to write
        out ($be),a ; Output to VRAM address, which is auto-incremented after each write
        dec bc
        ld a,b
        or c
        jp nz,ClearVRAMLoop
    ret


engine_vram_manager_load_palette:
    ld a,$00
    out ($bf),a
    ld a,$c0
    out ($bf),a
    ; 2. Output colour data
    ld hl,PaletteData
    ld b,(PaletteDataEnd-PaletteData)
    ld c,$be
    otir
    ret
    
.ends