@REM -------- Build images and push to registry --------
@REM CALL build-for-registry.example.bat

echo off
SETLOCAL

cd ..

@REM -------- Create the OpenNCP namespace --------
cd kubernetes
kubectl apply -f namespace.yaml
cd ..

@REM -------- Create the mysql database --------
kubectl create configmap custom-config-configmap --from-file=./mysql/custom.cnf --namespace=openncp
kubectl create configmap init-scripts-configmap --from-file=./mysql/startup-scripts --namespace=openncp
kubectl create configmap openncp-configuration-utility-cm --from-file=./openncp-configuration-utility/openncp-configuration.properties --namespace=openncp

cd mysql/manifests
kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql-pvc.yaml

SET TIMEOUT=10
FOR /L %%A IN (%TIMEOUT%,-1,1) DO (
    ECHO Waiting for %%A seconds...
    TIMEOUT /T 1 /NOBREAK >NUL
)

kubectl apply -f mysql-deployment.yaml
kubectl apply -f mysql-service.yaml

cd ../..

@REM ###### Create the OpenNCP applications ######

cd kubernetes
kubectl apply -f openncp-secrets.yaml
kubectl apply -f epsos-configuration-pvc.yaml

ECHO Copying the EPSOS configuration files to the shared volume...
kubectl apply -f copy-epsos-configuration-job.yaml

SET TIMEOUT=10
FOR /L %%A IN (%TIMEOUT%,-1,1) DO (
    ECHO Waiting for %%A seconds...
    TIMEOUT /T 1 /NOBREAK >NUL
)

kubectl delete -f copy-epsos-configuration-job.yaml
cd ..

@REM -------- Run the OpenNCP configuration utility --------
cd openncp-configuration-utility/manifest
kubectl apply -f openncp-configuration-utility-job.yaml
cd ../..

SET TIMEOUT=10
FOR /L %%A IN (%TIMEOUT%,-1,1) DO (
    ECHO Waiting for %%A seconds...
    TIMEOUT /T 1 /NOBREAK >NUL
)

@REM -------- Deploy the OpenNCP server (Node A) --------
cd openncp-server/manifests
kubectl apply -f openncp-server-deployment.yaml
kubectl apply -f openncp-server-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP client (Node B) --------
cd openncp-client/manifests
kubectl apply -f openncp-client-deployment.yaml
kubectl apply -f openncp-client-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP Portal Backend (Node B) --------
cd ehealth-portal-backend/manifests
kubectl apply -f ehealth-portal-backend-deployment.yaml
kubectl apply -f ehealth-portal-backend-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP Portal Frontend (Node B) --------
cd ehealth-portal-frontend/manifests
kubectl apply -f ehealth-portal-frontend-deployment.yaml
kubectl apply -f ehealth-portal-frontend-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP Gateway Backend (Officer) --------
cd openncp-gateway-backend/manifests
kubectl apply -f openncp-gateway-backend-deployment.yaml
kubectl apply -f openncp-gateway-backend-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP Gateway Frontend (Officer) --------
cd openncp-gateway-frontend/manifests
kubectl apply -f openncp-gateway-frontend-deployment.yaml
kubectl apply -f openncp-gateway-frontend-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP TRC-STS (Officer) --------
cd openncp-trc-sts/manifests
kubectl apply -f openncp-trc-sts-deployment.yaml
kubectl apply -f openncp-trc-sts-service.yaml
cd ../..

@REM -------- Deploy the OpenNCP OpenATNA (Officer) --------
cd openncp-openatna/manifests
kubectl apply -f openncp-openatna-deployment.yaml
kubectl apply -f openncp-openatna-service.yaml
cd ../..

ENDLOCAL
echo on