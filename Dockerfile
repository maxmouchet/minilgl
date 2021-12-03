FROM alpine:3.14 AS builder
RUN apk add --no-cache boost1.76-dev cmake make g++
WORKDIR /tmp
ADD . .
RUN cmake -S . -B build -DCMAKE_BUILD_TYPE=Release \
    && cmake --build build --parallel 4

FROM alpine:3.14
RUN apk add --no-cache libstdc++
COPY --from=builder /tmp/build/lgl* /usr/bin
