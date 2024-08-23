class infra::sudo {
#installing and configure sudo and add user in it
  $user = "khabir"

  package { 'sudo':
    ensure => 'present',
  }

  file { "/usr/local/etc/sudoers.d/10_$user":
    content => "$user ALL=(ALL:ALL) NOPASSWD: ALL",
    require => Package['sudo'],
  }

  notify { "$user":
    message => "$user added"
  }
}
