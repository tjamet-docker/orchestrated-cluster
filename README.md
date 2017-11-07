# orchestrated-cluster
Definition to bootstrap my orchestrated (swarm) cluster

This repository contains the docker-compose definition for my swarm clusters.

Usage:

```
docker swarm init
echo <your dd key> | docker secret create dd-agent
echo <your sumologic access id> | docker secret create sumo-access-id
echo <your sumologic access key> | docker secret create sumo-access-key
./deploy.sh dev # for development releases
./deploy.sh prod # for production release with https and letsencrypt support
```
