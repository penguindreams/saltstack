{% set site = salt['grains.get']('domain').replace(".","_") %}
{% set os = salt['grains.get']('os') %}

base:
  '*':
    - base.packages
