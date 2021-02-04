/* wait until next VBlank starts */
void SMS_waitForVBlank (void);


void SMS_setBGPaletteColor (unsigned char entry, unsigned char color);

#define SMS_EMBED_SEGA_ROM_HEADER(productCode,revision)                                        \
 const __at (0x7ff0) unsigned char __SMS__SEGA_signature[16]={'T','M','R',' ','S','E','G','A', \
                                                                          0xFF,0xFF,0xFF,0xFF, \
                  SMS_BYTE_TO_BCD((productCode)%100),SMS_BYTE_TO_BCD(((productCode)/100)%100), \
           (((productCode)/10000)<<4)|((revision)&0x0f),SMS_EMBED_SEGA_ROM_HEADER_REGION_CODE}

#define SMS_EMBED_SDSC_HEADER(verMaj,verMin,dateYear,dateMonth,dateDay,author,name,descr)      \
                          const __at (0x7fe0-sizeof(author)) char __SMS__SDSC_author[]=author; \
                 const __at (0x7fe0-sizeof(author)-sizeof(name)) char __SMS__SDSC_name[]=name; \
 const __at (0x7fe0-sizeof(author)-sizeof(name)-sizeof(descr)) char __SMS__SDSC_descr[]=descr; \
                          const __at (0x7fe0) char __SMS__SDSC_signature[16]={'S','D','S','C', \
                                              SMS_BYTE_TO_BCD(verMaj),SMS_BYTE_TO_BCD(verMin), \
                                          SMS_BYTE_TO_BCD(dateDay),SMS_BYTE_TO_BCD(dateMonth), \
                              SMS_BYTE_TO_BCD((dateYear)%100),SMS_BYTE_TO_BCD((dateYear)/100), \
                                      (0x7fe0-sizeof(author))%256,(0x7fe0-sizeof(author))>>8, \
            (0x7fe0-sizeof(author)-sizeof(name))%256,(0x7fe0-sizeof(author)-sizeof(name))>>8, \
                                      (0x7fe0-sizeof(author)-sizeof(name)-sizeof(descr))%256, \
                                        (0x7fe0-sizeof(author)-sizeof(name)-sizeof(descr))>>8}
/* pretty nice, isn't it? :) */

/* the Interrupt Service Routines (do not modify) */
//void SMS_isr (void) __interrupt;
//void SMS_nmi_isr (void) __critical __interrupt;

