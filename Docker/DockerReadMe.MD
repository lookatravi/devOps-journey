#Create an ec2 instance on AWS
	1. Create an ec2 instance
	2. Access the instance via private key
	   chmod 400 docker-host.pem
	   ssh -i "docker-host.pem" ec2-user@test.amazonaws.com

#How to install docker on AWS linux VM
    1  sudo yum install python3-pip
    2  sudo pip3 install docker-compose # with root access
    3  sudo systemctl enable docker.service
    4  sudo systemctl start docker.service
    5  sudo systemctl status docker.service
    6  docker version
    7  docker-compose version
	
#Build image and run the app on container
clone your nodejs app
docker build -t nodejs-hello-worldapp .
docker run -d -p 8080:8080 nodejs-hello-worldapp
docker ps -a
docker container logs e99842749523
