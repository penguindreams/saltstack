'apt':
    'sources':
        'base':
            'url': 'http://mirrors.mozy.com/ubuntu/'
            'tag': 'universe main multiverse'
            'channel': ''
        'base-updates':
            'url': 'http://mirrors.mozy.com/ubuntu/'
            'tag': 'universe main multiverse'
            'channel': ''
        'base-security':
            'url': 'http://mirrors.mozy.com/ubuntu/'
            'tag': 'universe main multiverse'
            'channel': ''
        'salt':
            'type': 'deb'
            'url': 'http://ppa.launchpad.net/saltstack/salt/ubuntu'
            'tag': 'main'
            'release': 'trusty'
            'channel': ''
            'key': '0x4759fa960e27c0a6'
        'logstash-forwarder':
            'type': 'deb'
            'url': 'http://packages.elasticsearch.org/logstashforwarder/debian'
            'tag': 'main'
            'release': 'stable'
            'channel': ''
            'key': '0xD27D666CD88E42B4'
        'logstash':
            'type': 'deb'
            'url': 'http://packages.elasticsearch.org/logstash/1.4/debian'
            'tag': 'main'
            'release': 'stable'
            'channel': ''
            'key': '0xD27D666CD88E42B4'
        'elasticsearch':
            'type': 'deb'
            'url': 'http://packages.elasticsearch.org/elasticsearch/1.4/debian'
            'tag': 'main'
            'release': 'stable'
            'channel': ''
            'key': '0xD27D666CD88E42B4'
        'ossec':
            'type': 'deb'
            'url': 'http://ossec.alienvault.com/repos/apt/debian'
            'tag': 'main'
            'release': 'wheezy'
            'channel': ''
            'key': '0x14B9C8DB9A1B1C65'
