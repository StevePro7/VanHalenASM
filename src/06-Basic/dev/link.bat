@echo off

echo Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
..\crt0\crt0_sms.rel ^
main.rel ^
..\lib\SMSlib.lib

@echo on