# show deployment
k apply -f nb.yaml
k get pods
k get deploy
k get rs

# show rolling update
k apply -f ng.yaml
k get deploy -w
k get rs -w
k describe deployment nginx-deployment

# rollback
k rollout history deployment/nginx-deployment --revision=2
k rollout undo deployment/nginx-deployment
k describe deployment nginx-deployment
