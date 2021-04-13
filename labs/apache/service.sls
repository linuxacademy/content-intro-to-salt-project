apache_service_start:
  service.running:
    - name: apache2

apache_service_enabled:
  service.enabled:
    - name: apache2
