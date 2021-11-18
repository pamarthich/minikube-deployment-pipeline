#!/bin/bash
cd /home/automation/
ls -lth
kubectl	 get po 
eval $(minikube docker-env)
docker images
