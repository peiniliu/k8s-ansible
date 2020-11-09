#https://github.com/GoogleCloudPlatform/spark-on-k8s-operator/blob/master/docs/volcano-integration.md
kubectl create namespace spark-operator
helm install incubator/sparkoperator --namespace spark-operator --set enableBatchScheduler=true --generate-name
