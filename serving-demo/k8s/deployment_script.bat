
kubectl apply -f namespace.yaml
kubectl apply -f docker-reg_secret.yaml
kubectl apply -f secret_db_credentials.yaml
kubectl apply -f configMap_db.yaml
kubectl apply -f configMap_app.yaml
kubectl apply -f stateful-set_db.yaml
 kubectl apply -f deployment_api.yaml
 kubectl apply -f deployment_app.yaml
 rem kubectl apply -f rbac.yaml


