# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as proxmox with context %}

proxmox-service-clean-service-dead:
  service.dead:
    - name: {{ proxmox.service.name }}
    - enable: False
