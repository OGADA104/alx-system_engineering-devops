# 2-execute_a_command.pp

exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  path        => ['/bin', '/usr/bin'],
  refreshonly => true,
}

# Assuming the process 'killmenow' is started before applying this manifest.
# The 'refreshonly' parameter ensures that the command will only run if notified by another resource.
