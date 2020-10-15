FROM ubuntu:latest

WORKDIR /opt/clickhouse/

VOLUME /opt/clickhouse/
VOLUME /etc/clickhouse-server

ENTRYPOINT programs/clickhouse server --config-file /etc/clickhouse-server/config.xml

#&& \
#    cd build && \
#    cmake .. && \
#    ninja && \
#    ninja clickhouse