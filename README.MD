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
