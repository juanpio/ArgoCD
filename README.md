# Course of ArgoCD from 0 to something.

## Installation


````
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
````

Install the CLI 

````
brew install argocd
````

Start trafffic to the port 

````
kubectl port-forward svc/argocd-server -n argocd 8080:443 
````

Open a browser with the Argo UI Admin

```` 
open -a "Google Chrome" http://localhost:8080 
````

Get the initial password for admin, one time admin password: o1jiQcFTden1kbjr
````
argocd admin initial-password -n argocd 
````

Then use this command to check the status of the kubernetes cluster for argocd namespace.
````
kubectl get Applications -n argocd
````

We can check the PODs status by namespace with the command
````
kubectl get po -n argocd
kubectl get po -n redis
````

##
## Git Repo Set ups
Each proyect has to have set the repository as public OR setup a repo access by using GitHubApp registration.

### GitHub Apps
To use a Git Hub App you need to have an Organization, then go to: 
-- settings -> Developer Setting -> GitApp

The you will have to registe an up which will required a public url among other set up that I did not cover here.


