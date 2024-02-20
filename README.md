# My Nest JS App

## Dev Env

```
docker compose up -d
```

## Using the Right Version of Node

In order to use the expected version of node with this project, there's an `aliases.sh` file that defines aliases for `node`, `npm`, `npx` and `nest` commands.

```
./nestjs-app/aliases.sh
```

These alias commands use the official [node docker image](https://hub.docker.com/_/node/) to avoid needing anything installed on your host machine (other than [docker](https://www.docker.com/)). These commands also use volume mounts to make it seem like the command is being run seamlessly on host.
