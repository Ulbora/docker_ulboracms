# Docker Ulbora CMS
- 1.0.0, latest[ (Dockerfile)](https://github.com/Ulbora/docker_ulboracms/blob/master/Dockerfile)

This is Docker Ulbora CMS running on Alpine


# Running
```
docker run -p some-port:8080 --name ulbora-cms --env DOCKER_ULBORACMS_DATABASE_NAME=some-db-name \
--link some-mongodb-container-name:mongo -it  ulboralabs/ulboracms sh
```
#### or as a daemon (suggested)
```
docker run -p some-port:8080 --name ulbora-cms --env DOCKER_ULBORACMS_DATABASE_NAME=some-db-name \
--link some-mongodb-container-name:mongo -d  ulboralabs/ulboracms sh
```
# Note
### The link to your mongodb container should always end with :mongo as shown above
```
--link some-mongodb-container-name:mongo 
```
The :mongo is an alias that produces an environment variable named MONGO_PORT_27017_TCP_ADDR inside the web container.
If :mongo were to be changed to :mongodb, then the environment variable would be named MONGODB_PORT_27017_TCP_ADDR and 
Ulbora CMS would not connect the the mongo database. Ulbora CMS needs the environment variable to be 
named MONGO_PORT_27017_TCP_ADDR.

### Ports on the host machine should be different for each Ulbora CMS container
#### Example: 
#### -p host-port-number:container-port-number
```
-p 3001:8080 
-p 3002:8080 
-p 3003:8080
```

# Connect to running instance
```
docker exec -it ulboralabs/ulboracms sh
```

