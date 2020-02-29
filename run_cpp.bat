@echo off 
cd "D:\notes_permenent\cpp"
echo %cd%
dir
set /p var1="enter the file name : "
for %%i in (%var1%) do (
	set var1=%%~ni
	set var2=%%~xi
)
cls
IF %var2%==.cpp (
	g++ -o %var1% %var1%.cpp & %var1%.exe
)
IF %var2%==.c (
	gcc -o %var1% %var1%.c & %var1%.exe
)
echo.
pause