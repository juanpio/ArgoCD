## Start colima manager
colima start
## Start miniKube service
minikube start
## Start argoCD service
kubectl port-forward svc/argocd-server -n argocd 8080:443 
open -a "Google Chrome" http://localhost:8080