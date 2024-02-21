echo off
SETLOCAL

kubectl delete rs --all --namespace=openncp
kubectl delete configmap --all --namespace=openncp
kubectl delete deployment --all --namespace=openncp
kubectl delete pod --all --namespace=openncp
kubectl delete service --all --namespace=openncp
kubectl delete pvc --all --namespace=openncp
kubectl delete job --all --namespace=openncp
kubectl delete secret --all --namespace=openncp
kubectl delete namespace openncp

ENDLOCAL
echo on