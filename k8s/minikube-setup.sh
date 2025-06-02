#!/bin/bash
minikube start
kubectl create configmap basic-html --from-file=app/index.html
