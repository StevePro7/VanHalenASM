.section "screen manager" free

engine_screen_manager_display_on:
    ; Turn screen on
    ld a,%11000000
;          |||| |`- Zoomed sprites -> 16x16 pixels
;          |||| `-- Doubled sprites -> 2 tiles per sprite, 8x16
;          |||`---- 30 row/240 line mode
;          ||`----- 28 row/224 line mode
;          |`------ VBlank interrupts
;          `------- Enable display
    out (VDP_CONTROL_PORT),a
    ld a,$81
    out (VDP_CONTROL_PORT),a  

    ret
    
.ends