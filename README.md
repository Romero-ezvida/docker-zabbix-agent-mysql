# docker-zabbix-agent-mysql

Zabbix Agent Docker image for MySQL monitoring

## Usage

```
docker run -d --name zabbix-agent -v /path/to/mysql.sock:/run/mysqld/mysqld.sock higebu/zabbix-agent-mysql <Hostname> <Server> <Hostmetadata>
```
