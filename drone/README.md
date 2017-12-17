# Run drone.io on the swarm cluster

1. create a githib application and get client id and secrets
2. Generate secrets

```
DRONE_SECRET=$(pwgen -s -y $(( RANDOM % 90 + 10 )) 1)

cat | docker secret create drone-server-secret - <<EOF
DRONE_SECRET=${DRONE_SECRET}
DRONE_GITHUB_CLIENT=<client id>
DRONE_GITHUB_SECRET=<client secret>
EOF

cat | docker secret create drone-shared-secret - <<EOF
DRONE_SECRET=${DRONE_SECRET}
EOF
```

3. deploy the application

`docker stack deploy --compose-file docker-compose.yml drone`
