# kappa
A mono repo for presentation on Kappa Architecture

## Setup
`docker swarm init`
`docker network create kappa -d overlay --attachable --scope swarm`
`docker stack deploy -c docker-compose-backing.yml backing`

