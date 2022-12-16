#Bulding api-profiles code and docker Image
echo "Building Source Code and Docker Image for API-PROFILES"
mkdir ~/api-profiles
cp -rf ~/src/tutorsapp-api ~/api-profiles
#cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
#rm -rf ~/src/Dockerfile
cat ~/src/Dockerfile-api-profiles >>  ~/api-profiles/Dockerfile
cd ~/api-profiles
docker build -t api-profiles:v1 .
rm -rf ~/api-profiles
