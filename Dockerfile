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

COPY . /opt/clickhouse/

WORKDIR /opt/clickhouse/build
ENTRYPOINT mkdir -p /opt/clickhouse/build

# RUN mkdir /opt/clickhouse/build && \
#    cd /opt/clickhouse/build && \
#    cmake .. && \
#    ninja && \
#    ninja clickhouse