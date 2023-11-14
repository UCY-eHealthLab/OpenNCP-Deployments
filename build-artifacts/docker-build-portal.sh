#!/bin/bash

# --- Variables ---
PORTAL_VERSION=1.1.0
PORTAL_SOURCE_REPO=https://code.europa.eu/ehdsi/ehealth-portal
PORTAL_SOURCE_BRANCH=master

# --- Build Portal ---
docker build -f Dockerfile.portal \
  --build-arg PORTAL_VERSION=$PORTAL_VERSION \
  --build-arg PORTAL_SOURCE_REPO=$PORTAL_SOURCE_REPO \
  --build-arg PORTAL_SOURCE_BRANCH=$PORTAL_SOURCE_BRANCH \
  -t ehealth-portal-artifacts:$PORTAL_VERSION .

docker run --name ehealth-portal-artifacts -d ehealth-portal-artifacts:$PORTAL_VERSION

docker cp ehealth-portal-artifacts:/usr/src/ .

docker rm ehealth-portal-artifacts

docker rmi ehealth-portal-artifacts:$PORTAL_VERSION

# Check if 'artifacts' directory exists, if not create it
if [ ! -d artifacts ]; then
  mkdir artifacts
fi

# Copy contents from 'src' to 'artifacts' and then remove 'src'
cp -r src/* artifacts/
rm -rf src
