# minilgl

[![Build](https://github.com/dioptra-io/minilgl/actions/workflows/build.yml/badge.svg)](https://github.com/dioptra-io/minilgl/actions/workflows/build.yml)

Cleaned-up fork of [TheOpteProject/LGL](https://github.com/TheOpteProject/LGL) (Large Graph Layout).

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
