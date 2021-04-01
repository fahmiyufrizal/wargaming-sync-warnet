@echo off
RD /S /Q "%ProgramData%\Wargaming.net"
%SystemRoot%\System32\reg.exe import _fahmiyufrizal/import_reg.reg
mklink /J "%ProgramData%\Wargaming.net" "%~dp0\_fahmiyufrizal\ProgramData\Wargaming.net"
start wgc.exe
cd _fahmiyufrizal
call cleanup.bat