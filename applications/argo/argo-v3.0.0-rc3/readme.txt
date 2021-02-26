kubectl -n argo create rolebinding default-admin --clusterrole=admin --serviceaccount=argo:default
kubectl -n argo create rolebinding argo-admin --clusterrole=cluster-admin --serviceaccount=argo:argo
kubectl -n argo create rolebinding default-admin --clusterrole=cluster-admin --serviceaccount=argo:default
kubectl -n argo create clusterrolebinding argo-server-admin --clusterrole=cluster-admin --serviceaccount=argo:argo-server
