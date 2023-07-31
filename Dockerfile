FROM ubuntu:latest

RUN apt-get update && apt-get install wget xz-utils tree -y


COPY . .

RUN wget -O factorio_headless_x64_1.1.87.tar.xz  https://factorio.com/get-download/1.1.87/headless/linux64 
RUN tar -xJf factorio_headless_x64_1.1.87.tar.xz

RUN chmod 777 /factorio -R

RUN "pwd"
RUN "ls"

CMD "./factorio/bin/x64/factorio --start-server ./dd.zip --port 7860" 
