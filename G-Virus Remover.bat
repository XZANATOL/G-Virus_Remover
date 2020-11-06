@echo off
echo.==============================
echo.=       G-Virus Remover      =
echo.=        Developed By        =
echo.=          XZANATOL          =
echo.==============================
SET /P blabla=Press Enter To Begin
echo.Removing Virus
echo.==============

REM checking for files of size 521 and deletes them

for /r %%x in (*.exe) do ( 
	if %%~zx == 533504 ( 
		del /F /A "%%x"
		echo deleted "%%x"
		echo deleted "%%x" >> log_deleted.txt
	)
)

for /r %%x in (*.bat) do ( 
	if %%~zx == 533504 ( 
		del /F /A "%%x"
		echo deleted "%%x"
		echo deleted "%%x" >> log_deleted.txt
	)
)

for /r %%x in (*.ico) do ( 
	if %%~zx == 533504 ( 
		del /F /A "%%x"
		echo deleted "%%x"
		echo deleted "%%x" >> log_deleted.txt
	)
)

for /r %%x in (*.ini) do ( 
	if %%~zx == 533504 ( 
		del /F /A "%%x"
		echo deleted "%%x"
		echo deleted "%%x" >> log_deleted.txt
	)
)

for /r %%x in (*.msi) do ( 
	if %%~zx == 533504 ( 
		del /F /A "%%x"
		echo deleted "%%x"
		echo deleted "%%x" >> log_deleted.txt
	)
)

echo.==============
echo.Done :D
echo.=================
echo.=================
echo.Revealing Files
echo.===============

REM removing hidden and system attributes from renamed files

for /r %%x in (g*.exe) do (
	attrib -H -S "%%x" /S /D
	echo Revealed %%x
	echo %%x >> log_revealed.txt
)

for /r %%x in (g*.bat) do (
	attrib -H -S "%%x" /S /D
	echo Revealed %%x
	echo %%x >> log_revealed.txt	
)

for /r %%x in (g*.ico) do (
	attrib -H -S "%%x" /S /D
	echo Revealed %%x
	echo %%x >> log_revealed.txt	
)

for /r %%x in (g*.ini) do (
	attrib -H -S "%%x" /S /D
	echo Revealed %%x
	echo %%x >> log_revealed.txt	
)

for /r %%x in (g*.bat) do (
	attrib -H -S "%%x" /S /D
	echo Revealed %%x
	echo %%x >> log_revealed.txt	
)
echo.=================
echo.Done :D
echo.=================
pause