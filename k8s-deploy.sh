#/bin/bash
echo "Deploying latest image to the PODs"
sshpass -p automation ssh  automation@157.245.107.84  'bash -s' < k8s.sh