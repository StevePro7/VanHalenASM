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
    jp main         ; jump to main program

.org $0066
; Pause button handler
    ; Do nothing
    retn

; Main program
main:
    ld sp, $dff0
    ld de, _RAM_FFFC_
    
    ; Infinite loop to stop program
Loop:
     jp Loop

