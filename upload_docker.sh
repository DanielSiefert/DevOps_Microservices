#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=danielsiefert/udacity-aws-devops-ml-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=danielsiefert 

# Step 3:
# Push image to a docker repository
docker push danielsiefert/udacity-aws-devops-ml-app:latest