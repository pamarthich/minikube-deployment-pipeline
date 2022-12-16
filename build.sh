#/bin/bash
echo "Building context for the application service $api"
sshpass -p automation ssh  automation@157.245.107.84 'bash -s' < $api.sh