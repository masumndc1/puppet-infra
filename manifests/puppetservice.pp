class freebsd::puppetservice {
#keeping service up
  package { 'puppet5':
    ensure => 'latest',
    before => Service['puppet'],
  }

  service { 'puppet':
    enable  => 'true',
    ensure  => 'running',
    require => Package['puppet5'],
    tag     => 'puppet',
  }
}
