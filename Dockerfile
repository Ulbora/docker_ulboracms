FROM alpine:latest
ENV PROJECT_REPOSITORY_RELEASE https://api.github.com/repos/Ulbora/ulboracms/tarball/2.0.19

RUN apk add --update
RUN apk add --update curl

RUN mkdir /nodeapps

RUN apk add --update nodejs



#FROM ubuntu:trusty
#ENV PROJECT_REPOSITORY_RELEASE https://api.github.com/repos/Ulbora/ulboracms/tarball/2.0.19


#RUN sudo apt-get update
#RUN sudo apt-get -y install curl

#RUN mkdir /nodeapps
#VOLUME /data/db /data/configdb /database/backup
#RUN sudo apt-get -y install nodejs
#RUN sudo apt-get -y install npm
#RUN sudo ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install forever -g 
######RUN curl -sf -o /nodeapps/ulboracms.tar.qz -L $PROJECT_REPOSITORY_RELEASE
######RUN tar -xzvf /nodeapps/ulboracms.tar.qz -C /nodeapps
######RUN mv /nodeapps/Ulbora* /nodeapps/ulboracms
#RUN forever /nodeapps/ulboracms/server.js
ADD entrypoint.sh /entrypoint.sh

EXPOSE 8080
#CMD ./entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]





