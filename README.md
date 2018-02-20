# kappa
A mono repo for presentation on Kappa Architecture

Slides: https://docs.google.com/presentation/d/1WNmq6_YUYxX2EMjR8Mf65uACocyqeyVoi1nKOzXT6nc/edit?usp=sharing

## Setup
`docker swarm init`

`docker network create kappa -d overlay --attachable --scope swarm`

`docker stack deploy -c docker-compose-backing.yml backing`

