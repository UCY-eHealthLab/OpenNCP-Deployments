#!/bin/bash

# --- Variables ---
OPENNCP_VERSION=6.5.0
OPENNCP_SOURCE_REPO=https://code.europa.eu/ehdsi/ehealth
OPENNCP_SOURCE_BRANCH=support/6.x.x

# --- Build OpenNCP ---
docker build -f Dockerfile.openncp \
  --build-arg OPENNCP_VERSION=$OPENNCP_VERSION \
  --build-arg OPENNCP_SOURCE_REPO=$OPENNCP_SOURCE_REPO \
  --build-arg OPENNCP_SOURCE_BRANCH=$OPENNCP_SOURCE_BRANCH \
  -t openncp-artifacts:$OPENNCP_VERSION .

docker run --name openncp-artifacts -d openncp-artifacts:$OPENNCP_VERSION

docker cp openncp-artifacts:/usr/src/ .

docker rm openncp-artifacts

docker rmi openncp-artifacts:$OPENNCP_VERSION

if [ ! -d artifacts ]; then
  mkdir artifacts
fi
cp -r src/* artifacts/
rm -rf src
