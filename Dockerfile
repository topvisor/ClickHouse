FROM ubuntu:latest

RUN apt-get update -y && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        git \
        cmake \
        python \
        ninja-build \
        gcc-9 \
        g++-9

ENV CC gcc-9
ENV CXX g++-9

WORKDIR /opt/clickhouse/
VOLUME /opt/clickhouse/
ENTRYPOINT mkdir -p build
#&& \
#    cd build && \
#    cmake .. && \
#    ninja && \
#    ninja clickhouse