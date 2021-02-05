#include "content_manager.h"
#include "..\..\lib\SMSlib.h"
#include "..\gfx.h"


#define FONT_TILES		0

// Tiles.
void engine_content_manager_load_tiles()
{
	SMS_loadPSGaidencompressedTiles( font__tiles__psgcompr, FONT_TILES );
	SMS_loadBGPalette( ( void * ) font__palette__bin );
}