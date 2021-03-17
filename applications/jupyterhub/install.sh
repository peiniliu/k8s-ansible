


helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

RELEASE=jupyterhub
NAMESPACE=jupyterhub

helm upgrade --cleanup-on-fail \
  --install $RELEASE jupyterhub/jupyterhub \
  --namespace $NAMESPACE \
  --create-namespace \
  --version=1.3.0 \
  --values config.yaml
