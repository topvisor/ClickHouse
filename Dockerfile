FROM ubuntu:latest

WORKDIR /opt/clickhouse/
VOLUME /opt/clickhouse/
ENTRYPOINT programs/clickhouse server

#&& \
#    cd build && \
#    cmake .. && \
#    ninja && \
#    ninja clickhouse