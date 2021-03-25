mysql_server_config:
  file.managed:
    - name: /etc/mysql/mysql.conf.d/mysqld.cnf
    - source: salt://mysql/files/deb_mysqld.cnf
