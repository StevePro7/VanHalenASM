#include "main.h"


void main (void)
{
  SMS_displayOff();
  
  engine_content_manager_load_tiles();
  engine_font_manager_draw_char('A', 10, 5);
  engine_font_manager_draw_text("HELLO WORLD", 10, 10);
  engine_font_manager_draw_data(52, 10, 15);
  
  SMS_displayOn();
  for (;;)
  {
    SMS_waitForVBlank();
  }
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");