
kubectl apply -f namespace.yaml
kubectl apply -f docker_reg_sec.yaml
kubectl apply -f secret_db_credentials.yaml
kubectl apply -f configMap_db.yaml
kubectl apply -f stateful-set_db.yaml
kubectl apply -f backend_deployment.yaml
kubectl apply -f bff_deployment.yaml


