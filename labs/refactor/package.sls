{% from "apache/map.jinja" import apache with context %}

apache_install:
  pkg.installed:
    - name: {{ apache.package }}
