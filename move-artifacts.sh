#!/bin/bash

# Check for openncp-ws-server.war
if [ -f build-artifacts/artifacts/openncp-ws-server.war ]; then
    echo "openncp-ws-server.war exists"
    if [ ! -d openncp-server/webapps ]; then
        mkdir openncp-server/webapps
    fi
    cp -f build-artifacts/artifacts/openncp-ws-server.war openncp-server/webapps/
else
    echo "openncp-ws-server.war does not exist, check build-artifacts/docker-build-openncp.bat"
fi

# Check for openncp-configuration-utility.jar
if [ -f build-artifacts/artifacts/openncp-configuration-utility.jar ]; then
    echo "openncp-configuration-utility.jar exists"
    cp -f build-artifacts/artifacts/openncp-configuration-utility.jar openncp-configuration-utility/
else
    echo "openncp-configuration-utility.jar does not exist, check build-artifacts/docker-build-openncp.bat"
fi

# Check for openncp-client-connector.war
if [ -f build-artifacts/artifacts/openncp-client-connector.war ]; then
    echo "openncp-client-connector.war exists"
    if [ ! -d openncp-client/webapps ]; then
        mkdir openncp-client/webapps
    fi
    cp -f build-artifacts/artifacts/openncp-client-connector.war openncp-client/webapps/
else
    echo "openncp-client-connector.war does not exist, check build-artifacts/docker-build-openncp.bat"
fi

# Check for ehealth-portal-backend.war
if [ -f build-artifacts/artifacts/ehealth-portal-backend.war ]; then
    echo "ehealth-portal-backend.war exists"
    if [ ! -d ehealth-portal-backend/webapps ]; then
        mkdir ehealth-portal-backend/webapps
    fi
    cp -f build-artifacts/artifacts/ehealth-portal-backend.war ehealth-portal-backend/webapps/
else
    echo "ehealth-portal-backend.war does not exist, check build-artifacts/docker-build-portal.bat"
fi

# Check for ehealth-portal folder
if [ -d build-artifacts/artifacts/ehealth-portal ]; then
    echo "ehealth-portal folder exists"
    cp -rf build-artifacts/artifacts/ehealth-portal ehealth-portal-frontend/ehealth-portal/
else
    echo "ehealth-portal does not exist, check build-artifacts/docker-build-portal.bat"
fi

# Check for openncp-trc-sts.war
if [ -f build-artifacts/artifacts/openncp-trc-sts.war ]; then
    echo "openncp-trc-sts.war exists"
    if [ ! -d openncp-trc-sts/webapps ]; then
        mkdir openncp-trc-sts/webapps
    fi
    cp -f build-artifacts/artifacts/openncp-trc-sts.war openncp-trc-sts/webapps/
else
    echo "openncp-trc-sts.war does not exist, check build-artifacts/docker-build-openncp.bat"
fi

# Check for openncp-gateway-backend.war
if [ -f build-artifacts/artifacts/openncp-gateway-backend.war ]; then
    echo "openncp-gateway-backend.war exists"
    if [ ! -d openncp-gateway-backend/webapps ]; then
        mkdir openncp-gateway-backend/webapps
    fi
    cp -f build-artifacts/artifacts/openncp-gateway-backend.war openncp-gateway-backend/webapps/
else
    echo "openncp-gateway-backend.war does not exist, check build-artifacts/docker-build-openncp.bat"
fi

# Check for openncp-gateway folder
if [ -d build-artifacts/artifacts/openncp-gateway ]; then
    echo "openncp-gateway folder exists"
    cp -rf build-artifacts/artifacts/openncp-gateway openncp-gateway-frontend/openncp-gateway/
else
    echo "openncp-gateway does not exist, check build-artifacts/docker-build-openncp.bat"
fi

# Check for openatna-web.war
if [ -f build-artifacts/artifacts/openatna-web.war ]; then
    echo "openatna-web.war exists"
    if [ ! -d openncp-openatna/webapps ]; then
        mkdir openncp-openatna/webapps
    fi
    cp -f build-artifacts/artifacts/openatna-web.war openncp-openatna/webapps/
else
    echo "openatna-web.war does not exist, check build-artifacts/docker-build-openncp.bat"
fi