# minilgl

[![Build](https://github.com/maxmouchet/minilgl/actions/workflows/build.yml/badge.svg)](https://github.com/maxmouchet/minilgl/actions/workflows/build.yml)

Cleaned-up fork of [TheOpteProject/LGL](https://github.com/TheOpteProject/LGL) (Large Graph Layout):
- Removal of Java code, BGP dumps, Perl scripts ...
- Use of [`robin_hood`](https://github.com/martinus/robin-hood-hashing)'s faster `unordered_map` and `unordered_set`

## Build from source

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
build/lglayout2d # or {lglayout,lglbreakup,lglfileconvert,lglrebuild}{2d,3d}
```

## Docker

```bash
# {lglayout,lglbreakup,lglfileconvert,lglrebuild}{2d,3d}
docker run ghcr.io/maxmouchet/minilgl:main lglayout2d
```

## Nix

```bash
nix run github:maxmouchet/minilgl#lglayout2d
```
