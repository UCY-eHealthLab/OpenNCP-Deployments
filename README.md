# OpenNCP-Deployments
OpenNCP containerization and deployment scripts

# Configuration
Rename `example.env` to `.env`
Open the .env file and set your required parameters

# Epsos-Configuration
TBD

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
