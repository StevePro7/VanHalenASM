#include "audio_manager.h"
#include "..\..\lib\PSGlib.h"
#include "..\psg.h"

#define sfx_right_psg sfx_right_psg

// Sound.
void engine_audio_manager_sfx_play()
{
	PSGSFXPlay( ( unsigned char* ) sfx_right_psg, SFX_CHANNEL2 );
}