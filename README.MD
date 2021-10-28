A batch file to help scaffold a simple build system for C++, C or Python.

Format:

new [Project Name] [Language]

Example:

new NewProj c++

This will create the following:

Folder "NewProj"

&nbsp;&nbsp;&nbsp;&nbsp;Folder "code"
	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File program.cpp
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;build.bat
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;debug.bat
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;edit.bat
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;run.bat
		
&nbsp;&nbsp;&nbsp;&nbsp;Folder "build"
