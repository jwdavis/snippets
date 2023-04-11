# show deployment
k get pods -w
k get deploy -w
k get rs -w
k apply -f nginx.yaml

# rolling update
k describe deployment nginx-deployment

# rollback
# break it using 1.161
k rollout status deployment/nginx-deployment
k get pods
k describe deployment nginx-deployment
k rollout history deployment/nginx-deployment --revision=2
k rollout undo deployment/nginx-deployment
k describe deployment nginx-deployment
