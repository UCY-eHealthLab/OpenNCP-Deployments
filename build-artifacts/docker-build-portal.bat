@REM --- Variables ---
set PORTAL_VERSION=1.1.0
set PORTAL_SOURCE_REPO=https://code.europa.eu/ehdsi/ehealth-portal
set PORTAL_SOURCE_BRANCH=master

@REM --- Build Portal ---
docker build -f Dockerfile.portal ^
  --build-arg PORTAL_VERSION=%PORTAL_VERSION% ^
  --build-arg PORTAL_SOURCE_REPO=%PORTAL_SOURCE_REPO% ^
  --build-arg PORTAL_SOURCE_BRANCH=%PORTAL_SOURCE_BRANCH% ^
  -t ehealth-portal-artifacts:%PORTAL_VERSION% .

docker run --name ehealth-portal-artifacts -d ehealth-portal-artifacts:%PORTAL_VERSION%

docker cp ehealth-portal-artifacts:/usr/src/ .

docker rm ehealth-portal-artifacts

docker rmi ehealth-portal-artifacts:%PORTAL_VERSION%

if not exist artifacts mkdir artifacts
xcopy src\* artifacts\ /E /I /Y
rmdir /S /Q src