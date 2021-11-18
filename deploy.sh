#!/bin/bash
cd /home/automation/
ls -lth
kubectl	 get po 
eval $(minikube docker-env)
docker images

# create workdir
mkdir ~/src
cd ~/src

# Cloning the api-repositories
git clone git@github.com:tricolorsoft/tutorsapp-api.git

# changing to develop branch
cd tutorsapp-api
git checkout -b develop origin/develop

#cloning the Docker files
cd ~/src
git clone git@github.com:pamarthich/tricolor-dockerfiles.git

#evaluating minikube docker env
eval $(minikube docker-env)

#Bulding api-uma code and docker Image
cd ~/src/tricolor-dockerfiles
cat Dockerfile-api-uma >> Dockerfile
docker build -t api-uma:v1 .


