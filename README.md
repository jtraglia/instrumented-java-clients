## Build tsan-teku docker image

```
sudo docker build -t teku-tsan --progress=plain -f teku.docker .
sudo docker run -it --rm --name teku-tsan-instance teku-tsan --version
```

## Run besu & teku

```
sudo docker-compose up
```
