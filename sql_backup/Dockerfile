FROM alpine

RUN apk update

RUN apk add --no-cache mysql-client mariadb-connector-c

COPY sqlserver.sh /opt/sqlserver.sh

RUN chmod 777 /opt/sqlserver.sh

WORKDIR /
CMD ["/opt/sqlserver.sh"]