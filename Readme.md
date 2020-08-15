```sh
docker build -t psollars/exercism .
```

Alternatively, you can provide an argument (`artifact`) to the build to specify the exercism executable artifact that you'd like to use. The artifact should be located in `./artifacts`

```
-build-arg artifact=exercism.tar.gz
```

```bash
docker run --rm -d -it --name exercism -v /mnt/c/Users/psollars.TEST/Desktop/exercism:/home/exercism psollars/exercism
```

```bash
docker run --rm -it \
           --env-file .env
           -v /mnt/f/Projects/psollars/exercism/files:/home/exercism \
           -v /mnt/f/Projects/psollars/exercism/bash/.bash_history:/root/.bash_history \
              psollars/exercism
```
