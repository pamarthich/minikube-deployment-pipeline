#Bulding api-sys code and docker Image
echo "Building Source Code and Docker Image for API-SYS"
mkdir ~/api-sys
cp -rf ~/src/tutorsapp-api ~/api-sys
#cp -rf  ~/src/tricolor-dockerfiles/*  ~/src/
#rm -rf ~/src/Dockerfile
cat ~/src/Dockerfile-api-sys >>  ~/api-sys/Dockerfile
cd ~/api-sys
docker build -t api-sys:v1 .
rm -rf ~/api-sys