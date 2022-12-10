
# Install Jenkins 

Pre-requisite :
    - aws ec2 linux machine 
    - docker install 
    - security group open port 22, 8080, 80 


__Install Docker__


```

#!/bin/bash 
echo "checking docker install or not"
VERIFY=`docker --version` 
if [ $? == 0 ]; 
then 
    echo "docker already installed on machine with below version"
    echo $VERIFY
else 
    echo "docker not installed on the machine "
    echo "installing docker on Redhat"
    sudo yum install docker -y 
    sudo service docker start 
    sudo usermod -aG docker $(whoami)
    echo "docker install successfully with below version"

    echo $VERIFY
fi

```


__Install jenkins image__


```

Create one dockerfile 
    - nano dockerfile 

FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install -y gnupg software-properties-common
RUN apt-get install wget -y
RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/hashicorp.list
RUN apt-get update
RUN apt-get install terraform
USER jenkins



Build docker image 
    - docker image build . -t terraform-jenkins

Crete docker container 
    - docker container run -itd -p 8080:8080 terraform-jenkins

Verify 
    - docker ps 

Grab the public IP and check in the browser ip:8080

login inside the container to get initial jenkins password 
    - docker container exec -it bash <containername or containerID>
    - cat /var/jenkins_home/secrets/initialAdminPassword

Wait for the installation to get complete


```

