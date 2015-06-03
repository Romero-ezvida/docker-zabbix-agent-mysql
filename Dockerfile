FROM alpine:latest

RUN apk --update add zabbix-agent mariadb mariadb-client \
    && rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN mkdir -p /etc/zabbix/zabbix_agentd.d
COPY userparameter_mysql.conf /etc/zabbix/zabbix_agentd.d/userparameter_mysql.conf

EXPOSE 10050

ENTRYPOINT ["/docker-entrypoint.sh"]
