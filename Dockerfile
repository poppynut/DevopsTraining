FROM node:10-alpine
WORKDIR /usr/local/Nodeapp

RUN apt-get install -y git

RUN git clone https://github.com/poppynut/DevopsTraining.git && cd DevopsTraining && npm install

RUN apt-get update


EXPOSE 8080
CMD [ "node", "DevopsTraining/server.js" ]

