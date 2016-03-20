FROM alpine:latest
ENV PROJECT_REPOSITORY_RELEASE https://api.github.com/repos/Ulbora/ulboracms/tarball/2.1.5

RUN apk add --update
RUN apk add --update curl
RUN mkdir /nodeapps
RUN apk add --update nodejs

RUN npm install forever -g 
RUN curl -sf -o /nodeapps/ulboracms.tar.gz -L $PROJECT_REPOSITORY_RELEASE
RUN tar -xzvf /nodeapps/ulboracms.tar.gz -C /nodeapps
RUN mv /nodeapps/Ulbora* /nodeapps/ulboracms
#RUN cd /nodeapps/ulboracms
#RUN npm install /nodeapps/ulboracms/package.json

WORKDIR /nodeapps/ulboracms
RUN npm install

ADD entrypoint.sh /entrypoint.sh
WORKDIR /

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]





