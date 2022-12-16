#Bulding api-dms code and docker Image
echo "Building Source Code and Docker Image for API-DMS"
mkdir ~/api-dms
cp -rf ~/src/tutorsapp-api ~/api-dms
#cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
#rm -rf ~/src/Dockerfile
cat ~/src/Dockerfile-api-dms >>  ~/api-dms/Dockerfile
cd ~/api-dms
docker build -t api-dms:v1 .
rm -rf ~/api-dms
