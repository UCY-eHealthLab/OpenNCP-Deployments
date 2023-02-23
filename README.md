# OpenNCP-Deployments
OpenNCP containerization and deployment scripts

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