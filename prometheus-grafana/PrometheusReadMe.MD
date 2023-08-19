#Install prometheus using Helm
https://github.com/prometheus-community/helm-charts
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-communit/prometheus
kubectl get all
kubectl get svc
#How to access outside of kuberenetes cluster
    kubectl expose service prometheus-server --type-port=9090 --name=prometheus-server-ext
	
#Install Grafana using Helm
helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana stable/grafana
kubectl port-forward svc/kube-prometheus-stack-grafana 3000:80 -n kube-prometheus-stack
