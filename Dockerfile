FROM ubuntu:trusty
ENV PROJECT_REPOSITORY_RELEASE https://api.github.com/repos/Ulbora/ulboracms/tarball/2.0.19
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" \
     | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN sudo apt-get update
RUN sudo apt-get -y install curl
RUN sudo apt-get install -y mongodb-org
RUN mkdir -p /data/db /data/configdb /database/backup \
	&& chown -R mongodb:mongodb /data/db /data/configdb /database/backup
RUN mkdir /nodeapps
VOLUME /data/db /data/configdb /database/backup
RUN sudo apt-get -y install nodejs
RUN sudo apt-get -y install npm
RUN sudo ln -s /usr/bin/nodejs /usr/bin/node
RUN sudo npm install forever -g 
RUN curl -sf -o /nodeapps/ulboracms.tar.qz -L $PROJECT_REPOSITORY_RELEASE
RUN tar -xzvf /nodeapps/ulboracms.tar.qz -C /nodeapps
RUN mv /nodeapps/Ulbora* /nodeapps/ulboracms
RUN forever /nodeapps/ulboracms/server.js
ADD entrypoint.sh /entrypoint.sh
ADD launchMongo.sh /launchMongo.sh
EXPOSE 8080
#ENTRYPOINT ["/entrypoint.sh"]





