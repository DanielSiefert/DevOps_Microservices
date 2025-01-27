#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag danielsiefert/udacity-aws-devops-ml-app .
# Step 2: 
# List docker images
docker images danielsiefert/udacity-aws-devops-ml-app

# Step 3: 
# Run flask app
docker run -p 127.0.0.1:8000:80/tcp danielsiefert/udacity-aws-devops-ml-app
