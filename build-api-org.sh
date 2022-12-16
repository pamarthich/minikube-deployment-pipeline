#Bulding api-org code and docker Image
echo "Building Source Code and Docker Image for API-ORG"
mkdir ~/api-org
cp -rf ~/src/tutorsapp-api ~/api-org
#cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
#rm -rf ~/src/Dockerfile
cat ~/src/Dockerfile-api-org >>  ~/api-org/Dockerfile
cd ~/api-org
docker build -t api-org:v1 .
rm -rf ~/api-org