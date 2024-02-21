#!/bin/bash

curl -o kubernetes-dashboard-recommended.yaml https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml

kubectl apply -f kubernetes-dashboard-recommended.yaml
kubectl apply -f dashboard-service-account.yaml
kubectl apply -f dashboard-cluster-role-binding.yaml
kubectl apply -f dashboard-service-account-secret.yaml

rm kubernetes-dashboard-recommended.yaml

xdg-open http://localhost:8081/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

kubectl proxy --port=8081