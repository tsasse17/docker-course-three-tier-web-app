
Create Token for service acc:
`kubectl create token serviceacc1 -n k8s-ns`

Add token to service acc:
`kubectl config set-credentials serviceacc1 --token <token>`
`

Service Acc = `serviceacc1`


Create Context:
`kubectl config set-context  test-context  --user=serviceacc1 --cluster=knative  --namespace=k8s-ns`
Use Context:
`kubectl config use-context test-context`