{% from "apache/map.jinja" import apache with context %}

apache_configuration:
  file.managed:
    - name: {{ apache.config }}
    - source:  {{ apache.config_source }}
    - require:
      - pkg: {{ apache.package }}

apache_restart:
  module.wait:
    - name: service.restart
    - m_name: {{ apache.service }}
    - watch:
      - apache_configuration
