rsyslog:
  settings:
    remote_servers:
      syslog01.psapps.local:
        max_disk_space: '1g'
        queue_type: 'LinkedList'
        queue_file_name: 'syslog01.psapps.local'
        retry_count: '-1'
        save_on_shutdown: 'on'
        protocol: 'tcp'
        uri: '10.130.224.3:514'
