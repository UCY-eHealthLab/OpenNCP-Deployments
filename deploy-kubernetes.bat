echo off
SETLOCAL

@REM -------- Create the OpenNCP namespace --------
cd kubernetes
kubectl apply -f namespace.yaml
cd ..

@REM -------- Create the mysql database --------
kubectl create configmap custom-config-configmap --from-file=./mysql/custom.cnf --namespace=openncp
kubectl create configmap init-scripts-configmap --from-file=./mysql/startup-scripts --namespace=openncp
kubectl create configmap mysql-healthcheck-configmap --from-file=./mysql/liveness-probe.sh --namespace=openncp

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

@REM -------- Run the OpenNCP configuration utility --------
kubectl create configmap config-utility-properties --from-file=./openncp-configuration-utility/openncp-configuration.properties --namespace=openncp

cd openncp-configuration-utility/manifest
kubectl apply -f openncp-configuration-utility-job.yaml
cd ../..

@REM -------- Deploy the OpenNCP server (Node A) --------


ENDLOCAL
echo on