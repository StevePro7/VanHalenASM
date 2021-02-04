.sdsctag 1.0,"Hello World","Simple Sega Master System demo to run on real hardware","StevePro Studios"

.include "variables.inc"
.include "main.inc"


.bank 0 slot 0
.org $0000
;==============================================================
; Boot section
;==============================================================
    di              ; disable interrupts
    im 1            ; Interrupt mode 1
    jp main         ; jump to main program

.org $0066
;==============================================================
; Pause button handler
;==============================================================
    ; Do nothing
    retn

;==============================================================
; Main program
;==============================================================
main:
    ld sp, $dff0

    ; Set up VDP registers
    call engine_vram_manager_load_vdpreg

    ;==============================================================
    ; Clear VRAM
    ;==============================================================
    call engine_vram_manager_clear_vram
    
    
    ;==============================================================
    ; Load palette
    ;==============================================================
    call engine_vram_manager_load_palette


    ;==============================================================
    ; Load tiles (font)
    ;==============================================================
    call engine_vram_manager_load_tiles


    ;==============================================================
    ; Write text to name table
    ;==============================================================
    call engine_text_manager_write_text


    ; Turn screen on
    call engine_screen_manager_display_on
    

    ; Infinite loop to stop program
Loop:
     jp Loop


;==============================================================
; Data
;==============================================================
.include "data.inc"