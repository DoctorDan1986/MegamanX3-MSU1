@ECHO OFF

del /q MegaManX3_MSU1.zip
del /q MegaManX3_MSU1_Music.7z

mkdir MegaManX3_MSU1
ucon64 -q --snes --chk mmx3_msu1.sfc
ucon64 -q --mki=mmx3_original.sfc mmx3_msu1.sfc
ucon64 -q --snes --chk mmx3_msu1_emulator.sfc
ucon64 -q --mki=mmx3_original.sfc mmx3_msu1_emulator.sfc
copy mmx3_msu1.ips MegaManX3_MSU1
copy mmx3_msu1_emulator.ips MegaManX3_MSU1
copy README.txt MegaManX3_MSU1
copy mmx3_msu1.msu MegaManX3_MSU1
rem copy mmx3_msu1.xml MegaManX3_MSU1
copy manifest.bml MegaManX3_MSU1
"C:\Program Files\7-Zip\7z" a -r MegaManX3_MSU1.zip MegaManX3_MSU1

"C:\Program Files\7-Zip\7z" a MegaManX3_MSU1_Music.7z *.pcm

del /q mmx3_msu1.ips
del /q mmx3_msu1_emulator.ips
rmdir /s /q MegaManX3_MSU1