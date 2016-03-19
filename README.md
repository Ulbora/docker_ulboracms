# Docker Ulbora CMS
- 1.0.0, latest[ (Dockerfile)](https://github.com/Ulbora/docker_ulboracms/blob/master/Dockerfile)

This is Docker Ulbora CMS running on Alpine


# Running
```
docker run --name ulbora-cms -e DOCKER_ULBORACMS_DATABASE_NAME=some-db-name \
--link some-mongodb-container-name:mongo -it  ulboralabs/ulboracms sh
```
#### or as a daemon (suggested)
```
docker run --name ulbora-cms -e DOCKER_ULBORACMS_DATABASE_NAME=some-db-name \
--link some-mongodb-container-name:mongo -d  ulboralabs/ulboracms sh
```
# Note
### The link to your mongodb container should always end with :mongo as shown above
```
--link some-mongodb-container-name:mongo 
```

# Connect to running instance
```
docker exec -it ulboralabs/ulboracms sh
```

