# add repository 
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable 

#update ressource
helm repo update

#install prometheus grafana
helm install prometheus prometheus-community/kube-prometheus-stack 