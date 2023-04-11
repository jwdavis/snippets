# show deployment
k apply -f nb.yaml
k get pods
k get deploy
k get rs

# show rolling update
k get deploy -w # 2nd shell session
k get rs -w #3rd shell session
k apply -f ng.yaml # 1st shell session
k describe deployment nginx-deployment # 1st shell session

# rollback
k rollout history deployment/nginx-deployment --revision=2
k rollout undo deployment/nginx-deployment
k describe deployment nginx-deployment

# modify service with color for blue/green