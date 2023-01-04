#!/usr/bin/env bash

set -x

# create serviceaccount
kubectl create serviceaccount console -n kube-system
kubectl create clusterrolebinding console --clusterrole=cluster-admin --serviceaccount=kube-system:console -n kube-system

# get secret name
SECRET_NAME=$(kubectl get serviceaccount console --namespace=kube-system -o jsonpath='{.secrets[0].name}')

# set secret name
sed -i "s/console-token.*/$SECRET_NAME/" 01_deployment.yaml
