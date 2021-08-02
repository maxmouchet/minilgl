# minilgl

[![Build](https://github.com/dioptra-io/minilgl/actions/workflows/build.yml/badge.svg)](https://github.com/dioptra-io/minilgl/actions/workflows/build.yml)

Cleaned-up fork of [TheOpteProject/LGL](https://github.com/TheOpteProject/LGL) (Large Graph Layout) :
- Removal of Java code, BGP dumps, Perl scripts ...
- Use of [`robin_hood`](https://github.com/martinus/robin-hood-hashing) faster map and set

```bash
# 2D version
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
# 3D version
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DDIMENSION=3
# Build
cmake --build build
# Run
build/lglayout
```
