@echo off
set path=%path%;c:\bin
set sasmheap=14400

del SFES*.sfc
del *.bps
cd sfes

@echo on

make clean
make fastrom=0 hardware=0 newface=1
copy sfes.sfc ..\sfes.sfc

del sfes.sfc
del *.sob

make sfes.sfc fastrom=0 hardware=0 newface=0
copy sfes.sfc ..\sfes_alt.sfc

make clean

pause
exit