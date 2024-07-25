REM CRDs and  core components  of Knative Serving
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.14.1/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.14.1/serving-core.yaml
kubectl wait --for=condition=ready pod --all --namespace=knative-serving --timeout=190s

REM networking layer
kubectl apply -l knative.dev/crd-install=true -f https://github.com/knative/net-istio/releases/download/knative-v1.14.1/istio.yaml
kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.14.1/istio.yaml
REM Knative Istio controller
kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.14.1/net-istio.yaml


REM DNS config
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.14.1/serving-default-domain.yaml

rem HPA
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.14.1/serving-hpa.yaml