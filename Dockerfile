FROM ubuntu:latest

RUN apt-get update && apt-get install wget xz-utils tree -y

WORKDIR /app

COPY . /app

RUN wget -O factorio_headless_x64_1.1.87.tar.xz  https://factorio.com/get-download/1.1.87/headless/linux64 
RUN tar -xJf factorio_headless_x64_1.1.87.tar.xz

RUN chmod 777 /app -R
RUN "ls;pwd;tree -d 4"
CMD "./factorio/bin/x64/factorio --start-server ./dd.zip --port 7860" 
