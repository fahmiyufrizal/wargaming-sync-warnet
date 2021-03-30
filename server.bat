@echo off
:fahmiyufrizal
xcopy C:\ProgramData\Wargaming.net _fahmiyufrizal\ProgramData\Wargaming.net /S /I
cd _fahmiyufrizal
del import_reg.reg
reg export HKEY_CURRENT_USER\SOFTWARE\Classes\wgc reg1.reg
reg export "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Wargaming.net Game Center" reg2.reg
reg export HKEY_CURRENT_USER\SOFTWARE\Wargaming.net reg3.reg
copy /Y reg*.reg import_reg.reg
del reg*.reg
cd _fahmiyufrizal
call cleanup.bat

