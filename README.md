# SlDevops

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 8.1.2.

## Create a docker image
`docker build -t <repo_name>/<image_name>:<tag> .`

## Push to docker hub
`docker push <repo_name>/<image_name>`

## Spin up a container from the published docker image in docker hub
the docker-compose.yml in this repo is pointing to [my docker hub image](https://hub.docker.com/r/chrisnewman/simplilearn_devops)

`docker-compose up`
