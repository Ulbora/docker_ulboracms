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
### Ports should be different for each Ulbora CMS container
```
-p 3001:8080 
-p 3002:8080 
-p 3003:8080
```

# Connect to running instance
```
docker exec -it ulboralabs/ulboracms sh
```

