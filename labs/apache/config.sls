apache_configuration:
  file.managed:
    - name: /etc/apache2/apache2.conf
    - source: salt://apache/files/ubuntu_apache2.conf
    - require:
      - pkg: apache2

apache_restart:
  module.wait:
    - name: service.restart
    - m_name: apache2
    - watch:
      - apache_configuration
