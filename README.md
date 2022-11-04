# simpleweb

Polecenia potrzebne do wykorzystania klucza SSH
```
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
```
Polecenie do budowy obrazu
```
DOCKER_BUILDKIT=1 docker build --ssh default -t lab2.v1 .
``` 
Polecenia do przesłania zbudowanego obrazu do repozytorium DockerHub
```
docker tag lab2.v1 weronika256/lab2.v1:1
docker push weronika256/lab2.v1:1
```
Polecenie do uruchomienia kontenera
```
docker run -p 8080:8080 lab2.v1
```


