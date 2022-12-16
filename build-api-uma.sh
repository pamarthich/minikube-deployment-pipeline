#Bulding api-uma code and docker Image
echo "Building Source Code and Docker Image for API-UMA"
mkdir ~/api-uma
cp -rf ~/src/tutorsapp-api ~/api-uma
cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/

cat Dockerfile-api-uma >> ~/api-uma/Dockerfile
cd ~/api-uma
docker build -t api-uma:v1 
rm -rf ~/api-uma