; Global variables
.define VDP_DATA_PORT      $be
.define VDP_CONTROL_PORT   $bf

.equ _RAM_FFFC_             $FFFC

.equ VDPBlank               $C000
.equ PauseRequested         $C001

.equ VDPReg                 $C0CA


.equ _VDPReg_init           $02BB

.equ Port_VDPAddress        $BF
.equ Port_VDPData           $BE
.equ Port_VCounter          $7E

.equ SpriteNextFree         $C0C7
.equ SpriteTableY           $C007
.equ SpriteTableXN          $C047

.equ VDPType                $C002
