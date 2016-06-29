@echo off
cls

echo Please provide your Interface Name below:
echo.
echo Example 1: interface.custhelp.com
echo Example 2: 10.10.10.10
echo.
set /p intname=Interface Name: 

@echo. >traceroutes.txt

@:loop

@echo Time:>> traceroutes.txt
@time /t >> traceroutes.txt
time /t
@tracert %intname% >> traceroutes.txt
@echo. >>traceroutes.txt
@echo. >>traceroutes.txt
@echo. >>traceroutes.txt
@ping 1.1.1.1 -n 1 -w 60000 > nulltemp.txt
@del nulltemp.txt

@goto loop