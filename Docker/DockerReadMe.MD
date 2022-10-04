#How to install docker on AWS linux VM
    1  sudo yum install python3-pip
    2  sudo pip3 install docker-compose # with root access
    3  sudo systemctl enable docker.service
    4  sudo systemctl start docker.service
    5  sudo systemctl status docker.service
    6  docker version
    7  docker-compose version
