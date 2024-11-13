FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Mexico_City
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openjdk-17-jdk maven curl unzip python-is-python3 ssh
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" -k && unzip awscliv2.zip && ./aws/install
WORKDIR /app
VOLUME /app
ENV AWS_PAGER ""
CMD ["/bin/bash"]