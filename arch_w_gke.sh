# show deployment
k get pods -w
k get deploy -w
k get rs -w
k apply -f nginx.yaml


kubectl rollout status deployment/nginx-deployment
kubectl get rs
kubectl get pods
kubectl describe deployments
