#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=danielsiefert/udacity-aws-devops-ml-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-aws-devops-ml-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
#Give Container 15 seconds to start
echo "Waiting for container to start..."
sleep 15
# Forward the container port to a host
kubectl port-forward deployment/udacity-aws-devops-ml-app 8000:80
