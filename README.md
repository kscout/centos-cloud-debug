# Centos Cloud Debug
Centos container image with cloud debug tools installs.

# Table Of Contents
- [Overview](#overview)
- [Develop](#develop)

# Overview
Docker repository: `docker.io/kscout/centos-cloud-debug:latest`  

Centos container with:

- Editors:
  - emacs
  - vim
- Tools:
  - git
  - zsh
  - wget
  - bind-utils
  - zsh
  - oc
  - kubectl

# Develop
Build container:

```
make build
```

Run container:

```
make run
```

Push container:

```
make push
```

Build then push container:

```
make up
```
