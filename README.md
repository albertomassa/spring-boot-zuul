# spring-boot-zuul

Zuul configuration in Spring Boot

### Docker::BUILD
```
mvn clean install 
docker build -t zuul/spring-boot-zuul .
```

### Docker Network::CREATE/REMOVE
```
docker network create --subnet=172.18.0.0/16 my-docker-network
docker network rm my-docker-network
```

### Docker Network::INSPECT
```
docker network inspect my-docker-network
```

### Docker::RUN
```
docker create --name zuul --network my-docker-network --ip 172.18.0.2 --publish 80:80 zuul/spring-boot-zuul 
docker start zuul
```

### DockerNetwork::CONNECT/DISCONNECT
```
docker network connect my-docker-network zuul/spring-boot-zuul
docker network disconnect my-docker-network zuul/spring-boot-zuul
```

### TEST
```
> http://localhost/spring-zuul/test-zuul
```

## Versioning

* **0.0.1** - *initial work*

## Authors

**alberto massa**, [contact me](https://www.facebook.com/albertomassa.info)
