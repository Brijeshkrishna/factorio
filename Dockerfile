FROM ubuntu:latest

RUN apt-get update && apt-get install wget xz-utils tree -y

WORKDIR /app

COPY . /app

RUN wget -O factorio_headless_x64_1.1.87.tar.xz  https://factorio.com/get-download/1.1.87/headless/linux64 
RUN tar -xJf factorio_headless_x64_1.1.87.tar.xz

RUN chmod 777 /app -R
RUN "tree"
CMD "/app/factorio/bin/x64/factorio --start-server /app/dd.zip --port 7860" 
