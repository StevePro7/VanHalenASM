.section "VRAM manager" free

engine_vram_manager_load_vdpreg:
    ;==============================================================
    ; Set up VDP registers
    ;==============================================================
    ld hl,VdpData
    ld b,VdpDataEnd-VdpData
    ld c,VDP_CONTROL_PORT
    otir
    ret


engine_vram_manager_clear_vram:

    ld a,$00
    out (VDP_CONTROL_PORT),a
    ld a,$40
    out (VDP_CONTROL_PORT),a
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
    out (VDP_CONTROL_PORT),a
    ld a,$c0
    out (VDP_CONTROL_PORT),a
    ; 2. Output colour data
    ld hl,PaletteData
    ld b,(PaletteDataEnd-PaletteData)
    ld c,$be
    otir
    ret


engine_vram_manager_load_tiles:
    ld a,$00
    out (VDP_CONTROL_PORT),a
    ld a,$40
    out (VDP_CONTROL_PORT),a
    ; 2. Output tile data
    ld hl,FontData              ; Location of tile data
    ld bc,FontDataEnd-FontData  ; Counter for number of bytes to write
    WriteTilesLoop:
        ; Output data byte then three zeroes, because our tile data is 1 bit
        ; and must be increased to 4 bit
        ld a,(hl)        ; Get data byte
        out ($be),a
        inc hl           ; Add one to hl so it points to the next data byte
        dec bc
        ld a,b
        or c
        jp nz,WriteTilesLoop
    ret

.ends