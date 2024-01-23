# 2-execute_a_command.pp

exec { 'killmenow':
  command    => '/usr/bin/pkill -f "killmenow"',
  path       => '/bin:/usr/bin',
  onlyif     => '/usr/bin/pgrep -f "killmenow"',
  tries      => 10,        # Number of tries
  try_sleep  => 2,         # Sleep duration between tries in seconds
}
