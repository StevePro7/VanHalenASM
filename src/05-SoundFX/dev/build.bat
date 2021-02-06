@echo off

echo Build
sdcc --debug -c -mz80 --std-sdcc99 psg.c


sdcc --debug -c -mz80 --std-sdcc99 main.c


echo Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
..\crt0\crt0_sms.rel ^
main.rel ^
..\lib\SMSlib.lib ^
engine\content_manager.rel ^
engine\font_manager.rel ^
gfx.rel



REM echo Binary output
ihx2sms output.ihx output.sms


:: Cleanup
if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.map" del "*.map" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul


::C:\SEGA\Fusion\fusion.exe output.sms
:: C:\SEGA\Meka\mekaw.exe output.sms
::java -jar C:\SEGA\Emulicious\emulicious.jar output.sms
