# minilgl

[![Build](https://img.shields.io/github/workflow/status/dioptra-io/minilgl/Build?logo=github)](https://github.com/dioptra-io/flashroute-docker/actions/workflows/build.yml)
[![Docker Architecture](https://img.shields.io/badge/arch-amd64%20%7C%20arm64-blue?logo=docker&logoColor=white)](https://hub.docker.com/r/dioptraio/minilgl/tags)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/dioptraio/minilgl?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/dioptraio/minilgl/tags)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/dioptraio/minilgl?color=blue&label=version&logo=docker&logoColor=white)](https://hub.docker.com/r/dioptraio/minilgl/tags)

Cleaned-up fork of [TheOpteProject/LGL](https://github.com/TheOpteProject/LGL) (Large Graph Layout) :
- Removal of Java code, BGP dumps, Perl scripts ...
- Use of [`robin_hood`](https://github.com/martinus/robin-hood-hashing) faster `unordered_map` and `unordered_set`

## Build from source

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
build/lglayout2d # or {lglayout,lglbreakup,lglfileconvert,lglrebuild}{2d,3d}
```

## Docker

```bash
# {lglayout,lglbreakup,lglfileconvert,lglrebuild}{2d,3d}
docker run dioptraio/minilgl lglayout2d
```
