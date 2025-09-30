# LaTeX Templates

This repository contain templates for:
- Reports
- Presentations

## Building

### Using Docker

Build image:

```shell
docker build -t latex-template .
```

Running `make` inside of docker image:

```shell
docker run --user "$(id -u):$(id -g)" -v `pwd`:/workdir latex-template make
```

**NOTE:** If you use this for your own projects, please update `latex-template` to something more sensible.

