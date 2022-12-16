#!/bin/bash
cd /home/automation/
ls -lth
# kubectl	 get po 
# eval $(minikube docker-env)
# docker images

#Cleaning the deploy workspace
rm -rf ~/src

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
# git clone git@github.com:pamarthich/tricolor-dockerfiles.git
git clone https://github.com/pamarthich/tricolor-dockerfiles.git
cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/

#evaluating minikube docker env
eval $(minikube docker-env)

# #Bulding api-uma code and docker Image
# echo "Building Source Code and Docker Image for API-UMA"
# cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
# cat Dockerfile-api-uma >> Dockerfile
# docker build -t api-uma:v1 .


# #Bulding api-sys code and docker Image
# echo "Building Source Code and Docker Image for API-SYS"
# #cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
# rm -rf ~/src/Dockerfile
# cat Dockerfile-api-sys >> Dockerfile
# docker build -t api-sys:v1 .


# #Bulding api-org code and docker Image
# echo "Building Source Code and Docker Image for API-ORG"
# #cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
# rm -rf ~/src/Dockerfile
# cat Dockerfile-api-org >> Dockerfile
# docker build -t api-org:v1 .


# #Bulding api-dms code and docker Image
# echo "Building Source Code and Docker Image for API-DMS"
# #cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
# rm -rf ~/src/Dockerfile
# cat Dockerfile-api-dms >> Dockerfile
# docker build -t api-dms:v1 .


# #Bulding api-profiles code and docker Image
# echo "Building Source Code and Docker Image for API-PROFILES"
# #cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
# rm -rf ~/src/Dockerfile
# cat Dockerfile-api-profiles >> Dockerfile
# docker build -t api-profiles:v1 .