#keeping service up

service { 'puppet':
  enable => 'true',
  ensure => 'running',
  tag    => 'puppet',
}
