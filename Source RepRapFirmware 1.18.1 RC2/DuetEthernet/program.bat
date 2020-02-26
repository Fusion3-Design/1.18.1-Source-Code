
@echo off
echo Upgrade procedure starting.
if %1.==. goto error
set hexfile=%1
set comportA=COM42
set comportB=COM15


set APID=NONE
set APP_DAEMON_PIDFILE="./pid.txt"
if exist %APP_DAEMON_PIDFILE% (
  set /P APID=<%APP_DAEMON_PIDFILE%
)
for /f "delims=," %%a in ('
    tasklist /fi "pid eq  %APID%" /nh /fo:csv
') do set MYPROCESS=%%~a

if "%MYPROCESS%"=="ttermpro.exe" (
	echo Killing TeraTerm
	taskkill /pid %APID% /f
)

if not exist %hexfile% goto error
if %comportA%==NONE for /f "usebackq" %%B in (`wmic path Win32_SerialPort Where "Caption LIKE '%%ASF%%'" Get DeviceID ^| FIND "COM"`) do set comportA=%%B
if %comportA%==NONE goto tryB
echo Com Port for Arduino device is detected as %comportA%.
echo Reset Arduino into bootloader
mode %comportA%: baud=12 
echo timeout
waitfor SomethingThatIsNeverHappening /t 3 >nul 2>&1
goto tryB
:tryB
echo tryb
for /f "usebackq" %%B in (`wmic path Win32_SerialPort Where "Caption LIKE '%%Bossa%%'" Get DeviceID ^| FIND "COM"`) do set comportB=%%B
if %comportB%==NONE goto nobldevice
echo Com Port for Arduino bootloader device is detected as %comportB%.
echo.
echo Starting AVR Downloader/UploaDEr.....
mode %comportB%: baud=19 
".\\bossac.exe" --port=%comportB% -e -w -v -b -R %hexfile% 
REM avrdude -pm32u4 -cavr109 -D -P%comportB% -b57600 -Uflash:w:%hexfile%
goto upgradedone
:nodevice
echo No matching module found, you should connect the module you want to upgrade.
goto end
:nobldevice
echo Reset into bootloader failed, please try again...
goto end
:error
Echo Missing parameter or file, you should provide the full filename of an existing .hex file you want to use.
goto end
:upgradedone
echo.
echo Upgrade done!
waitfor SomethingThatIsNeverHappening /t 1 >nul 2>&1
for /f "usebackq" %%B in (`wmic path Win32_SerialPort Where "Caption LIKE '%%ASF%%'" Get DeviceID ^| FIND "COM"`) do set comportA=%%B
set num=%comportA:~3%
echo %num%
pushd %workdir%
	for /f "tokens=2 delims=;= " %%G IN ('wmic process call create "C:\Program Files (x86)\teraterm\ttermpro.exe /C=%num%"  ^|find "ProcessId"')  do set /A PID=%%G
popd

echo %PID% >pid.txt
:end

#bossac.exe --port=COM15 -e -w -v -b DuetEthernetFirmware.bin