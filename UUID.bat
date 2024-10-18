@echo off
for /f "skip=1" %%A in ('wmic csproduct get uuid') do (
    if not "%%A"=="" (
        echo %%A | clip
        echo Check the popup message :p
        powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('HWID copied to clipboard press any key to exit.')"
        exit
    )
)


//save as a .bat file in notepad -- e.g hwid.bat
