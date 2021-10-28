@echo off

if "%~1"=="" (goto :no_name)
if "%~2"=="" (goto :no_lang)

if "%~2"=="c" (goto :c)
if "%~2"=="c++" (goto :cpp)
if "%~2"=="python" (goto :py)

echo "Unrecognized language"
goto :end

:no_name

echo "New command requires a project name"
goto :end

:no_lang

cd code
echo "New command requires a language"
goto :end

:: start

:c

mkdir %1
cd %1
mkdir code

mkdir build
cd code

:: create program.c

echo|set /p="#include <stdio.h>" > program.c
echo. >> program.c
echo. >> program.c
echo|set /p="int main()" >> program.c
echo. >> program.c
echo|set /p="{" >> program.c
echo. >> program.c
echo|set /p="/**/	printf("Hello World\n");" >> program.c
echo. >> program.c
echo|set /p="/**/	getchar();" >> program.c
echo. >> program.c
echo|set /p="}" >> program.c

:: create build.bat

echo|set /p="@echo off" > build.bat
echo. >> build.bat
echo. >> build.bat
echo|set /p="pushd ..\build" >> build.bat
echo. >> build.bat
echo|set /p="cl -Zi ..\code\program.c -o program" >> build.bat
echo. >> build.bat
echo|set /p="popd" >> build.bat

:: create edit.bat

echo|set /p="@echo off" > edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p="if "%%~1"=="" (goto :default) else goto :file" >> edit.bat
echo. >> edit.bat
echo|set /p=":file" >> edit.bat
echo. >> edit.bat
echo|set /p="start notepad++ %%1" >> edit.bat
echo. >> edit.bat
echo|set /p="goto :end" >> edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p=":default" >> edit.bat
echo. >> edit.bat
echo|set /p="start notepad++ program.*" >> edit.bat
echo. >> edit.bat
echo|set /p="goto :end" >> edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p=":end" >> edit.bat

:: create run.bat

echo|set /p="@echo off" > run.bat
echo. >> run.bat
echo. >> run.bat
echo|set /p="..\build\program.exe" > run.bat

:: create debug.bat

echo|set /p="@echo off" > debug.bat
echo. >> debug.bat
echo. >> debug.bat
echo|set /p="devenv ..\build\program.exe" >> debug.bat

vcvars64

goto :end

:cpp

mkdir %1
cd %1
mkdir code

mkdir build
cd code

:: create program.cpp

echo|set /p="#include <iostream>" > program.cpp
echo. >> program.cpp
echo. >> program.cpp
echo|set /p="int main()" >> program.cpp
echo. >> program.cpp
echo|set /p="{" >> program.cpp
echo. >> program.cpp
echo|set /p="/**/	std::cout << "Hello World\n";" >> program.cpp
echo. >> program.cpp
echo|set /p="/**/	std::cin.get();" >> program.cpp
echo. >> program.cpp
echo|set /p="}" >> program.cpp

:: create build.bat

echo|set /p="@echo off" > build.bat
echo. >> build.bat
echo. >> build.bat
echo|set /p="pushd ..\build" >> build.bat
echo. >> build.bat
echo|set /p="cl -Zi ..\code\program.cpp -o program" >> build.bat
echo. >> build.bat
echo|set /p="popd" >> build.bat

:: create edit.bat

echo|set /p="@echo off" > edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p="if "%%~1"=="" (goto :default) else goto :file" >> edit.bat
echo. >> edit.bat
echo|set /p=":file" >> edit.bat
echo. >> edit.bat
echo|set /p="start notepad++ %%1" >> edit.bat
echo. >> edit.bat
echo|set /p="goto :end" >> edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p=":default" >> edit.bat
echo. >> edit.bat
echo|set /p="start notepad++ program.*" >> edit.bat
echo. >> edit.bat
echo|set /p="goto :end" >> edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p=":end" >> edit.bat

:: create run.bat

echo|set /p="@echo off" > run.bat
echo. >> run.bat
echo. >> run.bat
echo|set /p="..\build\program.exe" > run.bat

:: create debug.bat

echo|set /p="@echo off" > debug.bat
echo. >> debug.bat
echo. >> debug.bat
echo|set /p="devenv ..\build\program.exe" >> debug.bat

vcvars64

goto :end

:py

mkdir %1
cd %1
mkdir code

cd code

:: create program.py

echo|set /p="print("Hello World")" > program.py

:: create edit.bat

echo|set /p="@echo off" > edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p="if "%%~1"=="" (goto :default) else goto :file" >> edit.bat
echo. >> edit.bat
echo|set /p=":file" >> edit.bat
echo. >> edit.bat
echo|set /p="start notepad++ %%1" >> edit.bat
echo. >> edit.bat
echo|set /p="goto :end" >> edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p=":default" >> edit.bat
echo. >> edit.bat
echo|set /p="start notepad++ program.*" >> edit.bat
echo. >> edit.bat
echo|set /p="goto :end" >> edit.bat
echo. >> edit.bat
echo. >> edit.bat
echo|set /p=":end" >> edit.bat

:: create run.bat

echo|set /p="@echo off" > run.bat
echo. >> run.bat
echo. >> run.bat
echo|set /p="program.py" > run.bat

goto :end

:end