@echo off
SETLOCAL

@REM --- Variables ---
set OPENNCP_VERSION=7.1.0
set OPENNCP_SOURCE_REPO=https://code.europa.eu/ehdsi/ehealth
set OPENNCP_SOURCE_TAG=7.1.0

@REM --- Build OpenNCP ---
docker build -f Dockerfile.openncp ^
  --build-arg OPENNCP_VERSION=%OPENNCP_VERSION% ^
  --build-arg OPENNCP_SOURCE_REPO=%OPENNCP_SOURCE_REPO% ^
  --build-arg OPENNCP_SOURCE_TAG=%OPENNCP_SOURCE_TAG% ^
  -t openncp-artifacts:%OPENNCP_VERSION% .

docker run --name openncp-artifacts -d openncp-artifacts:%OPENNCP_VERSION%

docker cp openncp-artifacts:/usr/src/ .

docker rm openncp-artifacts

docker rmi openncp-artifacts:%OPENNCP_VERSION%

if not exist artifacts mkdir artifacts
xcopy src\* artifacts\ /E /I /Y
rmdir /S /Q src

ENDLOCAL
@echo on