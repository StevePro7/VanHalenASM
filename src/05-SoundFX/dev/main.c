#include "main.h"

void main(void)
{
	unsigned char input;

	SMS_init();
	SMS_displayOff();
	engine_content_manager_load_tiles();
	engine_font_manager_draw_text( "HELLO", 10, 10 );
	SMS_displayOn();

	for (;;)
	{
		engine_input_manager_update();
		input = engine_input_manager_hold( input_type_down );
		if( input )
		{
			engine_font_manager_draw_text( "WORLD", 10, 11 );
		}

		SMS_waitForVBlank();

		PSGFrame();
		PSGSFXFrame();
	}
}

SMS_EMBED_SEGA_ROM_HEADER( 9999, 0 );
SMS_EMBED_SDSC_HEADER( 1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware" );