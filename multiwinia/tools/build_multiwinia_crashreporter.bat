@echo off
SETLOCAL

SET TOOLS=%~dp0
if not defined BUILD (set BUILD=build)

call build_multiwinia_data.bat

CD %TOOLS%\..

REM executables 
copy darwinia_gl.exe build\multiwinia.exe
copy contrib\systemIV\contrib\XCrashReport\dbghelp.dll build\
copy MultiwiniaSupport.ini build\
copy MultiwiniaSupport.exe build\
REM Cause problems with debugging tools
REM tools\upx --best build\MultiwiniaSupport.exe
REM tools\upx --best build\multiwinia.exe

:end
@pause
