# Package to OS dictionary
{% if grains['os'] == 'CentOS' %}
freeipa: ipa-client
{% elif grains['os'] == 'Ubuntu' %}
freeipa: freeipa-client
{% endif %}
