ARG version=1.8.0
FROM influxdb:${version}
MAINTAINER chitrang natu chit786@gmail.com

ADD ./entrypoint.sh /opt/entrypoint.sh
ADD config.toml /config/config.toml

ENV INFLUXDB_GRAFANA_USER '**None**'
ENV PRE_CREATE_DB '**None**'
ENV ROOT_PW '**None**'

# InfluxDB Admin server
EXPOSE	8083
# InfluxDB HTTP API
EXPOSE	8086
# InfluxDB HTTPS API
EXPOSE	8084

VOLUME ["/data"]
ENTRYPOINT [ "/opt/entrypoint.sh" ]
CMD ["influxd"]
