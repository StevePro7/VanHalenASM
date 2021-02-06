@echo off

echo Build
sdcc --debug -c -mz80 --std-sdcc99 gfx.c
sdcc --debug -c -mz80 --std-sdcc99 psg.c

cd engine
sdcc --debug -c -mz80 --std-sdcc99 audio_manager.c
sdcc --debug -c -mz80 --std-sdcc99 content_manager.c
sdcc --debug -c -mz80 --std-sdcc99 enum_manager.c
sdcc --debug -c -mz80 --std-sdcc99 font_manager.c
sdcc --debug -c -mz80 --std-sdcc99 input_manager.c
cd ..

sdcc --debug -c -mz80 --std-sdcc99 main.c


echo Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
..\crt0\crt0_sms.rel ^
main.rel ^
..\lib\SMSlib.lib ^
..\lib\PSGlib.rel ^
engine\audio_manager.rel ^
engine\content_manager.rel ^
engine\font_manager.rel ^
engine\enum_manager.rel ^
engine\input_manager.rel ^
gfx.rel ^
psg.rel



echo Run
ihx2sms output.ihx output.sms


:: Cleanup
if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.map" del "*.map" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul


C:\SEGA\Fusion\fusion.exe output.sms
:: C:\SEGA\Meka\mekaw.exe output.sms
::java -jar C:\SEGA\Emulicious\emulicious.jar output.sms