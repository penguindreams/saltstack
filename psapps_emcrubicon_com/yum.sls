yum:
  settings:
    repos:
      base:
        name: 'CentOS-$releasever - base'
        baseurl: 'http://mirrors.mozy.com/centos/$releasever/os/\$basearch/'
        enabled: '1'
        gpgcheck: '1'
        gpgkey: 'http://mirrors.mozy.com/centos/$releasever/os/\$basearch/RPM-GPG-KEY-CentOS-$releasever'
      updates:
        name: 'CentOS-$releasever - updates'
        baseurl: 'http://mirrors.mozy.com/centos/$releasever/updates/\$basearch/'
        enabled: '1'
        gpgcheck: '1'
        gpgkey: 'http://mirrors.mozy.com/centos/$releasever/os/\$basearch/RPM-GPG-KEY-CentOS-$releasever'
      extras:
        name: 'CentOS-$releasever - extras'
        baseurl: 'http://mirrors.mozy.com/centos/$releasever/extras/\$basearch/'
        enabled: '1'
        gpgcheck: '1'
        gpgkey: 'http://mirrors.mozy.com/centos/$releasever/os/\$basearch/RPM-GPG-KEY-CentOS-$releasever'
      epel:
        name: 'EPEL $releasever'
        baseurl: 'http://mirrors.mozy.com/fedora-epel/$releasever/\$basearch/'
        enabled: '1'
        gpgcheck: '1'
        gpgkey: 'http://mirrors.mozy.com/fedora-epel/RPM-GPG-KEY-EPEL-$releasever'
      ossec:
        name: 'OSSEC'
        mirrorlist: 'http://updates.atomicorp.com/channels/mirrorlist/atomic/centos-$releasever-$basearch'
        enabled: '1'
        gpgcheck: '1'
        gpgkey: |
          https://www.atomicorp.com/RPM-GPG-KEY.art.txt
           https://www.atomicorp.com/RPM-GPG-KEY.atomicorp.txt
      elasticsearch-1.4:
        name: 'Elasticsearch repository for 1.4.x packages'
        baseurl: 'http://packages.elasticsearch.org/elasticsearch/1.4/centos'
        gpgcheck: '1'
        gpgkey: 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
        enabled: '1'
      logstashforwarder:
        name: 'logstashforwarder repository'
        baseurl: 'http://packages.elasticsearch.org/logstashforwarder/centos'
        gpgcheck: '1'
        gpgkey: 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
        enabled: '1'
