echo off
echo ÿÿ
if "%1"=="" goto GeenParameter
echo Installatie naar %1
echo -------------------------------------------------------------------------------
echo ÿÿÿ
if not exist kalender.exe goto NoEXE
if not exist kalender.hlp goto NoHLP
if not exist kalender.doc goto NoDOC
if not exist kinstall.bat goto NoBAT
if not exist kconfig.exe goto NoCON
if exist %1\*.* goto Start
md %1
:Start
copy kalender.exe %1
copy kalender.hlp %1
copy kalender.doc %1
copy kinstall.bat %1
copy kconfig.exe %1
rem Installatie Voltooid!
echo ÿÿ
echo Installatie goed gedaan
goto Einde
:NoEXE
echo KALENDER.EXE niet aanwezig!
goto NoFile
:NoHLP
echo KALENDER.HLP niet aanwezig!
goto NoFile
:NoDOC
echo KALENDER.DOC niet aanwezig!
goto NoFile
:NoBAT
echo KINSTALL.BAT niet aanwezig!
goto NoFile
:NoCON
echo KCONFIG.EXE niet aanwezig!
goto NoFile
:NoFile
echo ÿÿ
echo De volgende bestanden moeten aanwezig zijn:
echo ÿÿ
echo - KALENDER.EXE
echo - KALENDER.HLP
echo - KALENDER.DOC
echo - KINSTALL.BAT
echo - KCONFIG.EXE
goto Einde
:GeenParameter
echo Start KINSTALL.BAT met bv:
echo ÿÿÿ
echo   KINSTALL C:\KALENDER  (installatie naar C en de directory \KALENDER)
echo   KINSTALL \DIV\KAL     (installatie naar de directory \DIV\KAL)
goto Einde
:Einde
echo ÿÿ
