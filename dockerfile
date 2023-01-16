#FROM ubuntu:18.04
#USER 0
FROM rockylinux:8.5
RUN dnf -y install epel-release dnf-plugins-core && \
    dnf config-manager --set-enabled powertools && \
    dnf -y install ufw && \
    dnf install -y numactl iptables libunwind-devel libtool gperftools-devel net-tools procps-ng && dnf -y update && dnf -y update

RUN apt-get update 
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN apt-get install -y git python3-pip

WORKDIR /app

COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

RUN mkdir -p /app/results
RUN mkdir -p /app/mount-folder
RUN chmod -R 777 /app

ENTRYPOINT /bin/bash -c "source /app/entryw.sh"
