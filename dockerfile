FROM ubuntu:18.04
USER 0

RUN apt-get update 
RUN apt-get install -y git python3-pip vim
WORKDIR /app

COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

RUN mkdir -p /app/results
RUN chmod -R 777 /app

ENTRYPOINT /bin/bash -c "source /app/entryw.sh"
