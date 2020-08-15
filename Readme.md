# Exercism

A containerized coding practice environment for: [exercism.io](https://exercism.io/my/tracks)

## Build

```
docker build -t psollars/exercism .
```

Alternatively, you can provide an argument (`artifact`) to the build to specify the exercism executable artifact that you'd like to use. The artifact should be located in `./artifacts`

```
-build-arg artifact=exercism.tar.gz
```

## Run

**On the Windows machine**

```
docker run --rm -it \
           --env-file .env \
           -v /mnt/f/Projects/psollars/exercism/files:/home/exercism \
           -v /mnt/f/Projects/psollars/exercism/bash/.bash_history:/root/.bash_history \
              psollars/exercism
```

**On the Mac**

```
docker run --rm -it \
           --env-file .env \
           -v ~/dev/exercism/files:/home/exercism \
           -v ~/dev/exercism/bash/.bash_history:/root/.bash_history \
              psollars/exercism
```
