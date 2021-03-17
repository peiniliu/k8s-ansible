##seldon core
## core charts
# 1. seldon-core-operator
helm install seldon-core seldonio/seldon-core-operator \
    --namespace seldon-system \
    --set usageMetrics.enabled=true \
    --set istio.enabled=true \
    --set keda.enabled=true
# 2. seldon-analytics(prometheus, grafana)
helm install seldon-core-analytics seldonio/seldon-core-analytics \
    --namespace seldon-system

## debug charts
# 1. seldon-single-model  Serve a single model with attached Persistent Volume.
# https://docs.seldon.io/projects/seldon-core/en/latest/charts/seldon-single-model.html
helm install $MY_MODEL_NAME seldonio/seldon-single-model --namespace $MODELS_NAMESPACE
helm template $MY_MODEL_NAME seldonio/seldon-single-model --namespace $MODELS_NAMESPACE

# 2.seldon-abtest Serve an AB test between two models.
# https://docs.seldon.io/projects/seldon-core/en/latest/charts/seldon-abtest.html
helm install $MY_MODEL_NAME seldonio/seldon-abtest --namespace $MODELS_NAMESPACE
helm template $MY_MODEL_NAME seldonio/seldon-abtest --namespace $MODELS_NAMESPACE

# 3. seldon-mab Serve a multi-armed bandit between two models.
# https://docs.seldon.io/projects/seldon-core/en/latest/charts/seldon-mab.html
helm install $MY_MODEL_NAME seldonio/seldon-mab --namespace $MODELS_NAMESPACE
helm template $MY_MODEL_NAME seldonio/seldon-mab --namespace $MODELS_NAMESPACE

# 4. seldon-od-model deploy an outlier detector as a single Seldon model. 
#https://docs.seldon.io/projects/seldon-core/en/latest/charts/seldon-od-model.html
helm install $MY_MODEL_NAME seldonio/seldon-od-model --namespace $MODELS_NAMESPACE
helm template $MY_MODEL_NAME seldonio/seldon-od-model --namespace $MODELS_NAMESPACE

# 5. seldon-od-transformer deploy an outlier detector as a transformer in an inference graph.
#https://docs.seldon.io/projects/seldon-core/en/latest/charts/seldon-od-transformer.html
helm install $MY_MODEL_NAME seldonio/seldon-od-transformer --namespace $MODELS_NAMESPACE
helm template $MY_MODEL_NAME seldonio/seldon-od-transformer --namespace $MODELS_NAMESPACE

## loadtesting
helm install seldon-core-loadtesting seldonio/seldon-core-loadtesting \
    --namespace seldon-system
