#!/bin/bash

echo "Deleting dms pod for new changes"
kubectl  delete po -l app=api-dms

sleep 30

echo "Deleting sys pod for new changes"
kubectl  delete po -l app=api-sys

sleep 30

echo "Deleting org pod for new changes"
kubectl  delete po -l app=api-org

sleep 30

echo "Deleting uma pod for new changes"
kubectl  delete po -l app=api-uma

sleep 30

echo "Deleting profiles pod for new changes"
kubectl  delete po -l app=api-profiles

sleep 30
