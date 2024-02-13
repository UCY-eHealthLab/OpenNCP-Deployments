# OpenNCP-Deployments
OpenNCP containerization and deployment scripts

## Current OpenNCP Dependent Projects

| Project | Version |
| ------- | ------- |
| OpenNCP | ![OpenNCP version](https://img.shields.io/badge/version-7.1.0-blue) |
| Portal  | ![Portal version](https://img.shields.io/badge/version-1.1.0-green) |


## Pre-requisites
- Docker Engine
- Artifacts officially published
  - In case of missing artifacts or access restrictions, the artifact can be built  using the instructions in the [Build Artifacts Instructions](#build-artifacts-instructions) section

# Certificates and Trust stores
## TLS Client Certificate
TBD

## TLS Client Keystore
TBD

## Trust Store
TBD

# Configuration
Rename `example.env` to `.env`
Open the .env file and set your required parameters

Execute `chmod 0444 mysql/custom.cnf`
(reason: `mysqld: [Warning] World-writable config file '/etc/mysql/conf.d/custom.cnf' is ignored.)`

# Epsos-Configuration
Setup certificates (keystores and truststore)

Edit openncp-configuration-utility/openncp-configuration.properties

... to be continued

# Build Instructions
Navigate to each of these folders
- openncp-client
- openncp-server
- openncp-gateway-backend
- openncp-gateway-frontend

and run the `docker-build.bat` file for each

# Deployment
From the root of the folder
`docker-compose up -d`

Write configuration to database using `openncp-configuration-utility/openncp-configuration-utility-5.2.1.jar`

... to be continued


## Build Artifacts Instructions
1. Navigate to the build-artifacts folder and run the `docker-build-openncp.bat` file
   * Make sure that you define the correct version needed in the `docker-build-openncp.bat` file and added the correct url in the configs/openncp.env file

    This will build the following artifacts:
    - openncp-ws-server.war
    - openncp-client-connectors.war
    - openncp-trc-sts.war
    - openncp-web.war
    - openncp-gateway-backend.war
    - openncp-gateway _(frontend folder)_
    - openncp-configuration-utility.jar

2. Navigate to the build-artifacts folder and run the `docker-build-portal.bat` file
   * Make sure that you define the correct version needed in the `docker-build-portal.bat` file and added the correct url in the configs/portal.env file

    This will build the following artifacts:
    - openncp-portal-backend.war
    - openncp-portal _(frontend folder)_

3. Once the artifacts are built, navigate to the root of the project and run the `move-artifacts.bat` file
   * This will move the artifacts to the respective folders where the docker-compose file will be able to pick them up

4. Once the artifacts are moved, run the `docker-compose up -d --build` command to build the images and start the containers

   - Note 01: The `--build` flag is used to ensure that the images are built from the latest artifacts

   - Note 02: The configuration utility will run once only when the database is empty. If you need to re-run the configuration utility, you will need to clear the database and run the `docker-compose up -d --build` command again.