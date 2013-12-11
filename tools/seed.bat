@ECHO OFF

FOR /d %%D IN (..\..\*) DO CALL :SUB_A %%~nD
GOTO:EOF

:SUB_A
  REM ECHO [%1]
  SET name=%1
  SET path=..\..\%name%
  IF NOT EXIST "%path%\smoke.html" ECHO creating %path%\smoke.html from index.html
  IF NOT EXIST "%path%\smoke.html" COPY %path%\index.html %path%\smoke.html
  COPY seed.html %path%\index.html /Y
GOTO:EOF