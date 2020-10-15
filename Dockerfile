FROM ubuntu:latest

COPY . /opt/clickhouse/

WORKDIR /opt/clickhouse/

VOLUME /etc/clickhouse-server

ENTRYPOINT ['clickhouse-server']
CMD ['--config-file', '/etc/clickhouse-server/config.xml']