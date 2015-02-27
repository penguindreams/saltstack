base:
  pkgrepo.managed:
    - ppa: vbernat/haproxy-1.5
  pkg.latest:
    - name: haproxy
    - refresh: True


haproxy:
  pkg.installed: []
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://haproxyapp/files/haproxy.config
    - user: root
    - group: root
    - mode: 644
    - template: jinja
  service.running:
    - enable: True
    - require:
      - pkg: haproxy
    - watch:
      - file: haproxy

/etc/haproxy/config/cert.pem:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://haproxyapp/files/cert.pem
#        - template:
        - makedirs: true
        - require:
            - pkg: haproxy

/etc/haproxy/config/syslog_forwarder.conf:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://haproxyapp/files/syslog_forwarder.conf
#        - template:
        - makedirs: true
        - require:
            - pkg: haproxy
