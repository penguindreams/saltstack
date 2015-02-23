{% set site = salt['grains.get']('domain').replace(".","_") %}
{% set os = salt['grains.get']('os') %}

base:
  '*':
    - base.packages

  # Added for infra-mon components
  'G@os_family:Debian and not G@domain:*.local':
    - match: compound
    - {{ site }}.apt
    - {{ site }}.zabbix.agent-ubuntu
    - {{ site }}.rsyslog.client
    - {{ site }}.trendmicro.agent
    - {{ site }}.ossec.agent

  'G@os_family:RedHat and not G@domain:*.local':
    - match: compound
    - {{ site }}.yum
    - {{ site }}.zabbix.agent-rhel
    - {{ site }}.rsyslog.client
    - {{ site }}.trendmicro.agent
    - {{ site }}.ossec.agent 
