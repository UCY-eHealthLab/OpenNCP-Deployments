@echo off
SETLOCAL

cd build-artifacts
CALL docker-build-openncp.bat
CALL docker-build-portal.bat
cd ..

if exist build-artifacts\artifacts\openncp-ws-server.war (
    echo "openncp-ws-server.war exists"
    if not exist openncp-server\webapps mkdir openncp-server\webapps
        xcopy /Y build-artifacts\artifacts\openncp-ws-server.war openncp-server\webapps
) else (
    echo "openncp-ws-server.war does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openncp-configuration-utility.jar (
    echo "openncp-configuration-utility.jar exists"
    xcopy /Y build-artifacts\artifacts\openncp-configuration-utility.jar openncp-configuration-utility\
) else (
    echo "openncp-configuration-utility.jar does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openncp-client-connector.war (
    echo "openncp-client-connector.war exists"
    if not exist openncp-client\webapps mkdir openncp-client\webapps
        xcopy /Y build-artifacts\artifacts\openncp-client-connector.war openncp-client\webapps
) else (
    echo "openncp-client-connector.war does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\ehealth-portal-backend.war (
    echo "ehealth-portal-backend.war exists"
    if not exist ehealth-portal-backend\webapps mkdir ehealth-portal-backend\webapps
        xcopy /Y build-artifacts\artifacts\ehealth-portal-backend.war ehealth-portal-backend\webapps
) else (
    echo "ehealth-portal-backend.war does not exist, check build-artifacts/docker-build-portal.bat"
)

if exist build-artifacts\artifacts\ehealth-portal (
    echo "ehealth-portal folder exists"
    xcopy /Y /E build-artifacts\artifacts\ehealth-portal ehealth-portal-frontend\ehealth-portal\
) else (
    echo "ehealth-portal does not exist, check build-artifacts/docker-build-portal.bat"
)

if exist build-artifacts\artifacts\openncp-trc-sts.war (
    echo "openncp-trc-sts.war exists"
    if not exist openncp-trc-sts\webapps mkdir openncp-trc-sts\webapps
        xcopy /Y build-artifacts\artifacts\openncp-trc-sts.war openncp-trc-sts\webapps
) else (
    echo "openncp-trc-sts.war does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openncp-gateway-backend.war (
    echo "openncp-gateway-backend.war exists"
    if not exist openncp-gateway-backend\webapps mkdir openncp-gateway-backend\webapps
        xcopy /Y build-artifacts\artifacts\openncp-gateway-backend.war openncp-gateway-backend\webapps
) else (
    echo "openncp-gateway-backend.war does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openncp-gateway (
    echo "openncp-gateway folder exists"
    xcopy /Y /E build-artifacts\artifacts\openncp-gateway openncp-gateway-frontend\openncp-gateway\
) else (
    echo "openncp-gateway does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openatna-web.war (
    echo "openatna-web.war exists"
    if not exist openncp-openatna\webapps mkdir openncp-openatna\webapps
        xcopy /Y build-artifacts\artifacts\openatna-web.war openncp-openatna\webapps
) else (
    echo "openatna-web.war does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openncp-tsam-sync.jar (
    echo "openncp-tsam-sync.jar exists"
    if not exist openncp-tsam-sync mkdir oopenncp-tsam-sync
        xcopy /Y build-artifacts\artifacts\openncp-tsam-sync.jar openncp-tsam-sync
) else (
    echo "openncp-tsam-sync.jar does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\openncp-tsam-exporter.jar (
    echo "openncp-tsam-exporter.jar exists"
    if not exist openncp-tsam-exporter mkdir openncp-tsam-exporter
        xcopy /Y build-artifacts\artifacts\openncp-tsam-exporter.jar openncp-tsam-exporter
) else (
    echo "openncp-tsam-exporter.jar does not exist, check build-artifacts/docker-build-openncp.bat"
)

if exist build-artifacts\artifacts\translations-and-mappings-ws.war (
    echo "translations-and-mappings-ws.war exists"
    if not exist openncp-client\webapps mkdir openncp-client\webapps
        xcopy /Y build-artifacts\artifacts\translations-and-mappings-ws.war openncp-client\webapps
) else (
    echo "translations-and-mappings-ws.war does not exist, check build-artifacts/docker-build-openncp.bat"
)

ENDLOCAL
@echo on