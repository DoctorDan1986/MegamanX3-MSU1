@ECHO OFF
del mmx3_msu1.sfc
del mmx3_msu1_emulator.sfc

copy mmx3_original.sfc mmx3_msu1.sfc

set BASS_ARG=
if "%~1" == "emu" set BASS_ARG=-d EMULATOR_VOLUME

bass %BASS_ARG% -o mmx3_msu1.sfc mmx3_msu1.asm

copy mmx3_original.sfc mmx3_msu1_emulator.sfc
bass -d EMULATOR_VOLUME -o mmx3_msu1_emulator.sfc mmx3_msu1.asm