### install kubernetes helm (in admin mode)
> choco install kubernetes helm

### add the repository about github source
> helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
> helm repo add stable https://charts.helm.sh/stable 

### update repo 

> helm repo update 

### search repo prometheus-community to see the charts

> helm search repo prometheus-community

### install promotheus

> helm install prometheus prometheus-community/kube-prometheus-stack

### search about connected repo
> helm repo list  


###### Kubernetes

### generate config file
> kubectl describe statefulset alertmanager-prometheus-kube-prometheus-alertmanager > alert.yaml
> kubectl describe statefulset prometheus-prometheus-kube-prometheus-prometheus > prom.yaml

### generate secret file 
kubectl get secret prometheus-prometheus-kube-prometheus-prometheus -o yaml > secret.yaml

### generate confimap prometheus 
kubectl get configmap prometheus-prometheus-kube-prometheus-prometheus-rulefiles-0 -o yaml > config.yaml

### apply config file
kubectl apply -f prometheus-service.yaml


###### Access to grafana (only port forward)

## list pods
> kubectl get pod
## log to grafana (for check listening port)
> kubectl logs prometheus-grafana-76549cf7b7-l94sq
## port forward deployment
> kubectl port-forward deployment/prometheus-grafana 3000
## connect to localhost
> http://localhost:3000

###### Access to Prometheus
## port forward pod 
> kubectl port-forward prometheus-prometheus-kube-prometheus-prometheus-0 9090
## connect to localhost
> http://localhost:9090


### sources

[Helm] (https://helm.sh/docs/intro/quickstart/)
[Link_Promotheus_Operator] (https://gitlab.com/nanuchi/youtube-tutorial-series/-/blob/master/prometheus-exporter/install-prometheus-commands.md)
[Prometheus_community_helm_charts](https://github.com/prometheus-community/helm-charts/tree/main/charts)

