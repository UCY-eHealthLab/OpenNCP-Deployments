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