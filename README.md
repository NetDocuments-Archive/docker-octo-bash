# docker-octo-bash

A docker container that contains octo.exe

Same as [this docker container](https://github.com/NetDocuments/docker-octo) but bash not powershell

## Building

```bash
docker-machine start
eval $(docker-machine env)
docker build -t <yourname>/octo-bash .
```

Upload to docker hub
```bash
docker login
docker push <yourname>/octo-bash
docker tag <yourname>/octo-bash:latest <yourname>/octo-bash:$(date +%Y%m%d)
docker push <yourname>/octo-bash:$(date +%Y%m%d)
```
