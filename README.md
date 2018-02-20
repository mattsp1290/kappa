# kappa
A mono repo for presentation on Kappa Architecture

Slides: https://docs.google.com/presentation/d/1WNmq6_YUYxX2EMjR8Mf65uACocyqeyVoi1nKOzXT6nc/edit?usp=sharing

## Setup
`docker swarm init`

`docker network create kappa -d overlay --attachable --scope swarm`

`docker stack deploy -c docker-compose-backing.yml backing`

Get an oAuth token from twitch at https://twitchapps.com/tmi/

Set it as the environment variable TWITCH_PASSWORD and set your twitch username to TWITCH_USERNAME

Use the build.sh file in each directory

Then run

`docker stack deploy -c docker-compose-app.yml app`

The app minus Kafka consumers is now available on http://localhost:8000