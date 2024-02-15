#!/bin/bash

# Get the token for the dashboard
TOKEN=$(kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}') | grep -E '^token' | awk '{print $2}')
echo "Token for the dashboard: $TOKEN"
