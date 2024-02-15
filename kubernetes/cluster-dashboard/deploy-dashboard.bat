@echo off
SETLOCAL

curl -o kubernetes-dashboard-recommended.yaml https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml

kubectl apply -f kubernetes-dashboard-recommended.yaml
kubectl apply -f dashboard-service-account.yaml
kubectl apply -f dashboard-cluster-role-binding.yaml
kubectl apply -f dashboard-service-account-secret.yaml

del kubernetes-dashboard-recommended.yaml

start http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

kubectl proxy --port=8081

ENDLOCAL
@echo on