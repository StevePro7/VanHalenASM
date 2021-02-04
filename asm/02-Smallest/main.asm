.memorymap
defaultslot 0
slotsize $8000
slot 0 $0000
.endme

.rombankmap
bankstotal 1
banksize $8000
banks 1
.endro

.sdsctag 1.0,"Hello World","Simple Sega Master System demo to run on real hardware","StevePro Studios"

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

    
    ; Infinite loop to stop program
Loop:
     jp Loop

