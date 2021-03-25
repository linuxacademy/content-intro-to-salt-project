mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: mysql
