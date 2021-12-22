cls
set path=%path%;c:\bin
set sasmheap=14400
cd SFES
@echo off
del *.sob
del lastasm.*
del *.bak /s
@echo on
make sg.rom > ..\build.log
cd ..
copy SFES\sg.rom SFES.SFC
del SFES\sg.rom
del SFES\BANK\*.sob
del SFES\status.doc
del SFES\lastasm.tmp
pause
exit
