# setup
gcloud config set project jwd-gcp-demos
gcloud config set compute/zone us-central1-a

# create gke cluster
gcloud container clusters create demos

# show deployment
k get deploy -w
k get rs -w
k get pods -w
k apply -f nginx.yaml

# rolling update
# edit to use 1.16.1
k describe deployment nginx-deployment

# rollback
# break it using 1.161
k rollout status deployment/nginx-deployment
k get pods
k describe deployment nginx-deployment
k rollout history deployment/nginx-deployment --revision=2
k rollout undo deployment/nginx-deployment
k describe deployment nginx-deployment

# scaling a deployment
kubectl scale deployment/nginx-deployment --replicas=10

