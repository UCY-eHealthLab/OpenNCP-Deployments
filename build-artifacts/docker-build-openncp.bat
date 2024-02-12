@REM --- Variables ---
set OPENNCP_VERSION=6.5.1
set OPENNCP_SOURCE_REPO=https://code.europa.eu/ehdsi/ehealth
set OPENNCP_SOURCE_BRANCH=support/6.x.x

@REM --- Build OpenNCP ---
docker build -f Dockerfile.openncp ^
  --build-arg OPENNCP_VERSION=%OPENNCP_VERSION% ^
  --build-arg OPENNCP_SOURCE_REPO=%OPENNCP_SOURCE_REPO% ^
  --build-arg OPENNCP_SOURCE_BRANCH=%OPENNCP_SOURCE_BRANCH% ^
  -t openncp-artifacts:%OPENNCP_VERSION% .

docker run --name openncp-artifacts -d openncp-artifacts:%OPENNCP_VERSION%

docker cp openncp-artifacts:/usr/src/ .

docker rm openncp-artifacts

docker rmi openncp-artifacts:%OPENNCP_VERSION%

if not exist artifacts mkdir artifacts
xcopy src\* artifacts\ /E /I /Y
rmdir /S /Q src
