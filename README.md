# OpenNCP-Deployments
OpenNCP containerization and deployment scripts

## Presentation Slides
https://github.com/UCY-eHealthLab/OpenNCP-Deployments/blob/main/OpenNCP-containerization-presentation.pdf

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

# Docker Deployment

## Pre-requisites
- Docker Engine
- Docker Compose
- Artifacts built using the instructions in the [Build Artifacts Instructions](#build-artifacts-instructions) section
- Configuration files updated with the correct parameters
- Certificates and Trust stores setup

## Deployment Instructions
Once the instruction in the build artifacts section are completed, from the root of the folder, run the `docker-compose up -d --build` command to build the images and start the containers

   - Note 01: The `--build` flag is used to ensure that the images are built from the latest artifacts

   - Note 02: The configuration utility will run once only when the database is empty. If you need to re-run the configuration utility, you will need to clear the database and run the `docker-compose up -d --build` command again.

<!-- Write configuration to database using `openncp-configuration-utility/openncp-configuration-utility-5.2.1.jar` -->

... to be continued


# Build Artifacts Instructions
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

# Kubernetes Deployment
Note: The following instructions are for deploying the OpenNCP stack on a Kubernetes cluster. The instructions are based on the assumption that the user has a Kubernetes cluster up and running and has the necessary permissions to deploy the stack.

Note: There is also a dashboard deployment file in the k8s folder. This is optional and can be used to deploy the Kubernetes dashboard to the cluster for monitoring purposes. (This is not part of the OpenNCP stack and is only provided as an optional deployment)

**Do not deploy the dashboard if you do not need it and make sure that if used, it is secured properly.**

Follow the instructions in the [Cluser Dashboard Deployment](#cluser-dashboard-deployment) section to deploy the dashboard.


## Pre-requisites
- Kubernetes Cluster
- Permissions to deploy to the cluster
- Registry with the OpenNCP and Portal docker images
  - There is a script called `build-for-registry.example.bat` in the root of the project that can be used to build the images and push them to a registry of your choice.
  - Make sure that you update all the manifest files with the correct image paths. The default registry used in the manifest files is `ghcr.io/ucy-ehealthlab`.

## Deployment Instructions
### OpenNCP Namespace
1. **Required**: Navigate to the `kubernetes` folder and run the following command to create the OpenNCP namespace
   * `kubectl create -f namespace.yaml`
2. **Optional**: If you would like to use a different namespace, you can update the `namespace.yaml` file with the desired namespace and run the command in step 1
   * However, you will need to adjust the other deployment files to use the new namespace

### MySQL Deployment
1. **Required**: Navigate to the `mysql/manifests` folder and copy the `mysql-secret-example.yaml` file to `mysql-secret.yaml`
   * Update the `mysql-secret.yaml` file with the correct values
2. **For manual deployment**: Navigate to the mysql folder and create the needed 3 configMaps:
   * `kubectl create configmap custom-config-configmap --from-file=./custom.cnf --namespace=openncp`
   * `kubectl create configmap init-scripts-configmap --from-file=./startup-scripts --namespace=openncp`
   * `kubectl create configmap mysql-healthcheck-configmap --from-file=./liveness-probe.sh --namespace=openncp`
3. **For manual deployment**: Navigate to the `mysql/manifests` folder and run the following command to deploy the MySQL database
   * `kubectl apply -f mysql-secret.yaml`
   * `kubectl apply -f mysql-pvc.yaml`
   * `kubectl apply -f mysql-deployment.yaml`
   * `kubectl apply -f mysql-service.yaml`

_Note: There is an automated deployment script that can be used to deploy the entire stack. The script is located at the root of the project and is called `deploy-kubernetess.bat`. More details on how to use the script can be found in the [Automated Deployment Script](#automated-deployment-script) section_

## Cluser Dashboard Deployment
1. Navigate to the kubernetes/cluster-dashboard folder and run the `deploy-dashboard.bat` file
   * This will deploy the Kubernetes dashboard to the cluster, will open a new browser window with the dashboard url and will start a proxy to the dashboard
   * The proxy will allow you to access the dashboard from your local machine
2. In order to access the dashboard, you will need to export the token using the `export-token.bat` file
   * This will export the token to the terminal and will also copy it to the clipboard

## Automated Deployment Script
1. Navigate to the root of the project and run the `deploy-kubernetes.bat` file
   * This will deploy the entire OpenNCP stack to the Kubernetes cluster
   * Make sure that you completed the *Required* steps in the [Deployment Instructions](#deployment-instructions) section for each of the components before running the script.

# Linux Support
We are currently working on adding support for Linux. Please check back soon for updates. Currently most of the scripts are both available for Windows and Linux.