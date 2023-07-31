FROM ubuntu:latest

RUN apt update && apt install wget -y

WORKDIR /app

COPY . /app

RUN wget https://factorio.com/get-download/1.1.87/headless/linux64 
RUN tar -xJf factorio_headless_x64_1.1.87.tar.xz

RUN chmod 777 /app -R

CMD "./factorio/bin/x64/factorio --start-server dd.zip --port 7860" 
