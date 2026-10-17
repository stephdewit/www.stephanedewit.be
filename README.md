# Personal Website

Personal website published at [www.stephanedewit.be](https://www.stephanedewit.be), built with [Hugo](https://gohugo.io) and the [Blowfish](https://blowfish.page) theme.

## Development

```bash
git submodule update --init
hugo server
```

## Build & Deploy

The site is packaged as a Docker image served by nginx.

```bash
# Build image
make build VERSION=1.2.3

# Push to registry
make push VERSION=1.2.3
```
