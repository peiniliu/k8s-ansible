kubectl get nodes

#master/node
kubectl label nodes  nxt2026 node-role.kubernetes.io/master=
kubectl label nodes  nxt2027 node-role.kubernetes.io/master=
kubectl label nodes  nxt2028 node-role.kubernetes.io/master=

#node
kubectl label nodes  nxt2029 node-role.kubernetes.io/node=
kubectl label nodes  nxt2030 node-role.kubernetes.io/node=


kubectl get nodes

#test
kubectl apply -f tests/myapp.yaml
## 给节点打上 master 角色
#kubectl label nodes  xxx node-role.kubernetes.io/master=
## 给节点打上 node 角色
#kubectl label nodes xxx node-role.kubernetes.io/node=
## 打上 master 节点不可调度后，master 节点将不会运行 pod，除非容忍这个污点
#kubectl taint nodes xxx  node-role.kubernetes.io/master=:NoSchedule
## 与上条结果相反，将 master 节点当 node 节点使用
#kubectl taint nodes xxx node-role.kubernetes.io/master-
