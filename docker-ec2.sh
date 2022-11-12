!/bin/bash

#AUTHOR: sabina 

Description ------------------------------------Installation Docker in EC2 instance

echo "This is installation of Docker in EC2 instance"
 sleep 2

sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

echo "log out and log back in again to pick up the new docker group permissions. Run the command:$ logout ... Now, reconnect to your instance (you can recall the previous command you used to connect your new ssh session will have the appropriate docker group permissions"

sleep 3
echo "verify that the ec2-user can run Docker commands without sudo by running docker info"
