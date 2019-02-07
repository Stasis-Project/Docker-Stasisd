# docker-based Stasisd node

This image provides `Stasisd` via docker while mounting a local folder for Stasis `data-dir` to keep blockchain and wallet info on your host machine.

## usage

### build the image

```sh
make
```

### run it

```sh
make run
```

or if you want to use `docker` manually:

```sh
docker run -v `pwd`/Stasis-data:/root/.Stasis -w /Stasis-Core/src -i -t Stasis/Stasis-Core bash
```

### start `Stasisd`

```sh
cd /Stasis-Core/src
./Stasisd
```

it will give you a prompt to edit the `Stasis.conf` in the data dir. Copy and paste the credentials it gives you.


### open another shell

Now, `ssh` into the existing container. You can get the container id like so

```sh
$ docker ps
CONTAINER ID        IMAGE                 COMMAND             CREATED             STATUS              PORTS               NAMES
d173377e3757        Stasis/Stasis-Core   "bash"              5 minutes ago       Up 5 minutes                            dazzling_booth
```

Now jump inside with the `exec` command:

```sh
docker exec -ti d173377e3757 /bin/bash
```

### now, run `Stasisd` commands

```sh
./Stasisd help
```

### managing your wallet

The data directory will end up on your host machine in a folder called `Stasis-data`
