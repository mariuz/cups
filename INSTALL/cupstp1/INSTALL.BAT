@echo off
cls
echo:
if "%1"=="" goto nodir
echo ************************************************
echo          This file will transfer the files
ECHO          from a floppy drive to a hard disk.
echo    The files will be installed in directory %1
echo    To abort installation hit CTRL-C 
echo:                                                      
echo              otherwise 
pause
echo ************************************************
echo:
md %1
md %1\cupstp
echo ****************************************************************
echo *                please put disk #1 in the flopy drive         *
echo
echo ****************************************************************
echo Instaling files from disk 1...
call copy readmetp %1
call tp1.exe  -d  %1\cupstp
echo ****************************************************************
echo *                 Please put disk#2 in the floppy drive        *
echo ****************************************************************
pause 
echo Instaling files from disk 2
call tp2.exe  -d  %1\cupstp
echo:
echo: 
ECHO *****************************************************************
ECHO *         Your CUPS programs are installed in directory         *
ECHO                         %1\CUPSTP                               
ECHO *           To run them go to this directory and type           *
ECHO *                        cupstp.exe                             *
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
md c:\cups
md c:\CUPS\cupstp
echo **************************************************************
echo *               please put disk #1 in the floppy drive       *
echo **************************************************************
echo Installing files from disk 1...             
call copy readmetp   c:\Cups
call tp1.exe -d  c:\cups\cupstp
echo *************************************************************
echo *                please put disk#2 in the floppy drive        *
echo ****************************************************************
pause
echo Instaling files from disk 2...
call tp2.exe  -d  c:\Cups\cupstp
echo:
echo: 
ECHO *****************************************************************
ECHO *         Your CUPS programs are installed in directory         *
ECHO                       c:\cups\CUPSTP
ECHO *           To run them go to this directory and type           *
ECHO *                        cupstp.exe                             *
ECHO *****************************************************************
:end
