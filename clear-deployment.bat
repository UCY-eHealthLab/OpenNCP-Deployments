echo off
SETLOCAL

@REM -------- Remove the mysql database --------
cd mysql/manifests
kubectl delete -f mysql-secret.yaml
kubectl delete -f mysql-service.yaml
kubectl delete -f mysql-deployment.yaml
kubectl delete -f mysql-pvc.yaml

cd ../..

kubectl delete configmap custom-config-configmap --namespace=openncp
kubectl delete configmap init-scripts-configmap --namespace=openncp
kubectl delete configmap mysql-healthcheck-configmap --namespace=openncp

@REM ###### Remove the OpenNCP applications ######
@REM -------- Remove the OpenNCP configuration utility --------
cd openncp-configuration-utility/manifest
kubectl delete -f openncp-configuration-utility-job.yaml

cd ../..
kubectl delete configmap config-utility-properties --namespace=openncp

@REM -------- Clear all replicasets --------
kubectl delete rs --all --namespace=openncp

@REM -------- Remove the OpenNCP namespace --------
cd kubernetes
kubectl delete -f namespace.yaml
cd ..

ENDLOCAL
echo on