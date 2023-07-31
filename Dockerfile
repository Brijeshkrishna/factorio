FROM ubuntu:latest

WORKDIR /app

COPY . /app
RUN chmod 777 /app -R

CMD "./factorio/bin/x64/factorio --start-server dd.zip --port 7860" 
