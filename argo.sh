#!/bin/bash
echo "Hello, from eks script"

echo "update the kubeconfig for kubernetes cluster"

aws eks update-kubeconfig --region us-east-1 --name TFE-EKS-CLUSTER

echo "successfully updated the kubeconfig for the cluster"

echo "executed the command "

kubectl create namespace argocd

echo "created the argocd namespace"

echo "will apply the argocd yaml"

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "installed argocd yaml"

echo "checking the namespace in kubernetes cluster"

kubectl get ns

echo "getting into the argocd namespace"

kubectl config set-context --current --namespace=argocd

echo "setting default namespace completed !!!!"

echo "port forward of kubectl in the eks cluster"

kubectl port-forward svc/argocd-server -n argocd 8080:443 

echo "argo admin initial password"

argocd admin intial password -n argocd

