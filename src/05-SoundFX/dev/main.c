#include "main.h"

void main(void)
{
	SMS_init();
	SMS_displayOff();
	engine_content_manager_load_tiles();
	engine_font_manager_draw_text( "STEVEN", 10, 10 );
	SMS_displayOn();

	for (;;)
	{
		SMS_waitForVBlank();

		PSGFrame();
		PSGSFXFrame();
	}
}

SMS_EMBED_SEGA_ROM_HEADER( 9999, 0 );
SMS_EMBED_SDSC_HEADER( 1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware" );