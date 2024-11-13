FROM jenkins/jenkins
USER root
RUN apt-get update -qq \
 && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -k -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update -qq \
 && apt-get -y install docker.io maven
RUN usermod -aG docker jenkins
RUN mkdir app
VOLUME /app

#docker run -p 8087:8080 -p 8081:8081 -p 50000:50000 --name Jenkins-Dind --detach --restart always -v //var/run/docker.sock:/var/run/docker.sock -v .\app:/app  rafael9809/jenkins-dind:latest