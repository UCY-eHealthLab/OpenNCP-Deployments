@echo off
REM Get the token for the dashboard

FOR /F "tokens=*" %%i IN ('kubectl -n kubernetes-dashboard get secret ^| findstr admin-user') DO SET secret=%%i
FOR /F "tokens=1" %%i IN ("%secret%") DO SET secretName=%%i

FOR /F "tokens=*" %%i IN ('kubectl -n kubernetes-dashboard describe secret %secretName% ^| findstr token') DO SET tokenLine=%%i
FOR /F "tokens=2" %%i IN ("%tokenLine%") DO SET TOKEN=%%i

echo %TOKEN% | clip
echo Token for the dashboard copied to the clipboard

echo Token for the dashboard: %TOKEN%

@echo on