echo off
SETLOCAL

set OPENNCP_VERSION=7.1.0
set PORTAL_VERSION=1.1.0

@REM Ask user for the docker registry to be used
SET /P REGISTRY="Enter the docker registry to be used: "

echo The registry you entered is: %REGISTRY%

@REM Ask user if the registry is correct
SET /P IS_CORRECT="Is this correct? (Y/N): "

IF /I "%IS_CORRECT%" NEQ "Y" (
    echo The registry you entered is not correct. Exiting...
    EXIT /B 1
)

cd ..

cd openncp-configuration-utility
docker build -t %REGISTRY%/openncp-configuration-utility:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-configuration-utility:%OPENNCP_VERSION%
cd ..

cd epsos-configuration
docker build -t %REGISTRY%/openncp-epsos-configuration:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-epsos-configuration:%OPENNCP_VERSION%
cd ..

cd openncp-server
docker build -t %REGISTRY%/openncp-server:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-server:%OPENNCP_VERSION%
cd ..

cd openncp-client
docker build -t %REGISTRY%/openncp-client:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-client:%OPENNCP_VERSION%
cd ..

cd ehealth-portal-backend
docker build -t %REGISTRY%/ehealth-portal-backend:%PORTAL_VERSION% .
docker push %REGISTRY%/ehealth-portal-backend:%PORTAL_VERSION%
cd ..

cd ehealth-portal-frontend
docker build -t %REGISTRY%/ehealth-portal-frontend:%PORTAL_VERSION% .
docker push %REGISTRY%/ehealth-portal-frontend:%PORTAL_VERSION%
cd ..

cd openncp-trc-sts
docker build -t %REGISTRY%/openncp-trc-sts:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-trc-sts:%OPENNCP_VERSION%
cd ..

cd openncp-gateway-backend
docker build -t %REGISTRY%/openncp-gateway-backend:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-gateway-backend:%OPENNCP_VERSION%
cd ..

cd openncp-gateway-frontend
docker build -t %REGISTRY%/openncp-gateway-frontend:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-gateway-frontend:%OPENNCP_VERSION%
cd ..

cd openncp-openatna
docker build -t %REGISTRY%/openncp-openatna:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-openatna:%OPENNCP_VERSION%
cd ..

cd openncp-tsam-sync
docker build -t %REGISTRY%/openncp-tsam-sync:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-tsam-sync:%OPENNCP_VERSION%
cd ..

cd openncp-tsam-exporter
docker build -t %REGISTRY%/openncp-tsam-exporter:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-tsam-exporter:%OPENNCP_VERSION%
cd ..

ENDLOCAL
echo on