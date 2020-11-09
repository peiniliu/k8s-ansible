#kubectl API
https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#-strong-getting-started-strong-


#get complete pods
kubectl get pod --field-selector=status.phase==Succeeded
#remove completed pods
kubectl delete pod --field-selector=status.phase==Succeeded
kubectl delete jobs.batch.volcano.sh/mindspore-cpu


kubectl delete daemonsets,replicasets,services,deployments,pods,rc --all
kubectl delete --all pods --namespace=foo


#log
kubectl logs -n volcano-system volcano-scheduler-79f569766f-bxgnf --tail 20
kubectl get events

#get
kubectl get all -n volcano-system

# In a namespace
kubectl api-resources --namespaced=true
# Not in a namespace
kubectl api-resources --namespaced=false
