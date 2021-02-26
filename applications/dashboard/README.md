# kubernetes-dashboard 2.0.0

这是部署 Kubernetes 看板 2.0.0 版本，好久不更新的 Dashboard 终于发布一个新版本，这里部署一下尝尝鲜，具体操作流程可以查看我的博客。

博客地址： http://www.mydlq.club/article/28/




kubectl apply -f k8s-dashboard-rbac.yaml
kubectl apply -f k8s-dashboard-configmap-secret.yaml
kubectl apply -f k8s-dashboard-deploy.yaml
kubectl apply -f kubernetes-metrics-scraper.yaml
kubectl apply -f k8s-dashboard-token.yaml


kubectl describe secret/$(kubectl get secret -n kube-system |grep admin|awk '{print $1}') -n kube-system

kubectl describe secret/$(kubectl get secret -n kube-system |grep admin|awk '{print $1}') -n kube-system

kubectl delete -f k8s-dashboard-rbac.yaml
kubectl delete -f k8s-dashboard-configmap-secret.yaml
kubectl delete -f k8s-dashboard-deploy.yaml
kubectl delete -f kubernetes-metrics-scraper.yaml
kubectl delete -f k8s-dashboard-token.yaml
