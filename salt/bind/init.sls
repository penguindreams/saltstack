bind9:
  pkg.installed:
    - pkgs:
      - bind9
      - bind9-doc
      - bind9utils
  file.managed:
    - name: /etc/bind/named.conf.local
    - source: salt://bind/files/debian/named.conf.local
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: bind9
  service.running:
    - name: bind9
    - enable: True
    - watch:
      - file: bind9


/etc/bind/named.conf:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://bind/files/debian/named.conf
#        - template: 
        - require:
            - pkg: bind9

/etc/bind/zones/db.psapps.forward:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://bind/files/debian/psapps.forward
        - makedirs: true
#        - template:
        - require:
            - pkg: bind9

/etc/bind/zones/db.psapps.reverse:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://bind/files/debian/psapps.reverse
        - makedirs: true
#        - template: jinja
        - require:
            - pkg: bind9

/etc/bind/named.conf.options:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://bind/files/debian/named.conf.options
        - makedirs: true
#        - template: jinja
        - require:
            - pkg: bind9
