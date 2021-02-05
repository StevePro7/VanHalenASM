#include "SMSlib.h"

void stevepro()
{
  SMS_setSpritePaletteColor(0, RGB(3,0,0));
}

void main (void)
{
  stevepro();
  for (;;)
  {
    SMS_waitForVBlank();
  }
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware");