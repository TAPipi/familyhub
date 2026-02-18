@echo off
set "HTML=%~dp0index.html"
set "URL=file:///%HTML:\=/%"

where msedge >nul 2>&1
if %ERRORLEVEL%==0 (
  start "" "msedge" --app="%URL%" --start-fullscreen --no-first-run --disable-translate
  exit /b
)
where chrome >nul 2>&1
if %ERRORLEVEL%==0 (
  start "" "chrome" --app="%URL%" --start-fullscreen --no-first-run
  exit /b
)
start "" "%URL%"
