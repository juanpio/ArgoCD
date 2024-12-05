# Course of ArgoCD from 0 to something.

## Installation


````
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
````

Install the CLI 

`` brew install argocd ``

Trafffic to the port 

`` kubectl port-forward svc/argocd-server -n argocd 8080:443 ``
`` open -a "Google Chrome" http://localhost:8080 ``

Get the initial password for admin
`` argocd admin initial-password -n argocd ``
one time admin password: o1jiQcFTden1kbjr