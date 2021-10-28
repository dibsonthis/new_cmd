A batch file to help scaffold a simple build system for C++, C or Python.

Format:

new [Project Name] [Language]

Example:

new NewProj c++

This will create the following:

Folder "NewProj"

> Folder "code"
	
>> program.cpp
>> build.bat
>> debug.bat
>> edit.bat
>> run.bat
		
> Folder "build"

Running build.bat will build program.cpp into the build folder.

Running edit.bat [file - optional] will open program.cpp in VSCode if no arg provided, otherwise it will open the file provided in VSCode.

Running debug.bat runs devenv on program.exe.

Running run.bat runs program.exe.
