FROM ubuntu:latest

WORKDIR /opt/clickhouse/
VOLUME /opt/clickhouse/
ENTRYPOINT programs/clickhouse-server --config-file /etc/clickhouse-server/config.xml 2> /dev/null &

#&& \
#    cd build && \
#    cmake .. && \
#    ninja && \
#    ninja clickhouse