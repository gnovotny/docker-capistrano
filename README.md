# Capistrano docker container

Docker container for capistrano. Please see the [homepage](http://capistranorb.com) for info.

## Supported tags
-   `3.5.0`, `3.5`, `latest`

## Usage
```shell
docker run grilix/capistrano[:version] cap [stage] [deploy]
```


### EXAMPLES
All commands assume you are in the deploy directory

```
docker run --rm \
    --name capistrano$(date +%s) \
    -v $(pwd):/app \
    grilix/capistrano
```

If you would like to use your ssh-agent _(tested on ubuntu)_

```
docker run --rm \
    --name capistrano$(date +%s) \
    -v $(pwd):/app \
    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
    -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK
    grilix/capistrano[:version] \
    cap [commands]
```
