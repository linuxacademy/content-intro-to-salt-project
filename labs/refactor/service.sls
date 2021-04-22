{% from "apache/map.jinja" import apache with context %}

apache_service_start:
  service.running:
    - name: {{ apache.service }}

apache_service_enabled:
  service.enabled:
    - name: {{ apache.service }}
