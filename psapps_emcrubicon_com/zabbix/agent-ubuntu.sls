zabbix:
  os:
    package_source:  'http://mirrors.mozy.com/zabbix/zabbix/2.2/ubuntu/pool/main/z/zabbix/'
  settings:
    http_proxy: ''
    zabbix_agentd.conf:
      Server: 10.130.224.2,127.0.0.1
      ServerActive: 10.130.224.2,127.0.0.1
      HostMetadataItem: system.uname