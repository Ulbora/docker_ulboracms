# Docker Ulbora CMS
- 1.0.0, latest[ (Dockerfile)](https://github.com/Ulbora/docker_alpine_mongodb/blob/1.0.0/Dockerfile)

This is Docker Ulbora CMS running on Alpine


# Running
```
docker run --name ulbora-cms --link some-mongodb-container-name:mongo -it  ulboracms sh
```
#### or
```
docker run --name ulbora-cms --link some-mongodb-container-name:mongo -d  ulboracms sh
```
#Note
### The link to your mongodb container should always end with :mongo as shown above
```
--link some-mongodb-container-name:mongo 
```

# Connect to running instance
```
docker exec -it ulboralabs/mongodb-alpine:latest sh
```
