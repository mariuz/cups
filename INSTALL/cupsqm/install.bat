@echo off
cls
echo:
if "%1"=="" goto nodir
echo *************************************************
echo *         This file will transfer the files     *
ECHO *         from a floppy drive to a hard disk.   *
echo *   The files will be installed in directory %1 *
echo *          To abort installation hit CTRL-C     *        
echo:*                  ***********                  *        
echo *                   otherwise                   *
pause
echo ************************************************
echo:
md %1
echo Installing files from disk 1...             
call copy readmeqm  %1
call qm.exe  -d  %1
echo:
echo: 
ECHO *****************************************************************
ECHO *         Your CUPS programs are installed in directory         *
ECHO                         %1\CUPSQM                               
ECHO *           To run them go to this directory and type           *
ECHO *                        cupsqm.exe                             *
ECHO *****************************************************************
goto end
:nodir
echo **************************************************************
echo   Since you did not enter an installation drive and directory
echo                the files will be transferred 
ECHO              from a floppy drive to a hard disk
echo              and  installed in directory c:\CUPS
echo                        *****
echo                If you want a different directory
echo    abort installation by hitting CTRL-C and start again
echo             with proper directory as in example
echo                  INSTALL C:\PROGRAMS
echo                        *****
echo                       otherwise 
pause
echo ************************************************
echo:
md c:\CUPS
echo Installing files from disk 1.
call readmeqm  c:\Cups             
call qm.exe  -d  c:\Cups
echo:
echo: 
ECHO *****************************************************************
ECHO *         Your CUPS programs are installed in directory         *
ECHO                       c:\cups\CUPSQM
ECHO *           To run them go to this directory and type           *
ECHO *                        cupsqm.exe                             *
ECHO *****************************************************************
:end
