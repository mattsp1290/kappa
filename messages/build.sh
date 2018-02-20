#!/bin/bash

docker build -t mattsp1290/kappa-messages-rails -f ./Dockerfile-rails .
docker build -t mattsp1290/kappa-messages-kafka -f ./Dockerfile-kafka .
