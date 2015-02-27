freeipa:
  pkg.installed:
    - name: {{ pillar['freeipa'] }}
  file.managed:
    - name: /etc/ipa/freeipa-config.sh
    - source: salt://freeipa/files/freeipa-config.sh
    - user: root
    - group: root
    - mode: 777
  cmd.run:
    - name: /etc/ipa/freeipa-config.sh
