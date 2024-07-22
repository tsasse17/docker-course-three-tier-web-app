
kubectl delete -f deployment_app.yaml
kubectl delete -f deployment_api.yaml
kubectl delete -f stateful-set_db.yaml
kubectl delete -f configMap_app.yaml
kubectl delete -f configMap_db.yaml
kubectl delete -f secret_db_credentials.yaml
kubectl delete -f docker-reg_secret.yaml
kubectl delete -f namespace_timetoshine.yaml

