class infra::sudo {
#installing and configure sudo and add user in it
  $backupuser = lookup('backup_user')

  package { 'sudo':
    ensure => 'present',
  }

  user { "$backupuser":
    ensure => 'present',
    managehome => 'true',
  }

  file { "/etc/sudoers.d/10_$backupuser":
    content => "$backupuser ALL=(ALL:ALL) NOPASSWD: ALL",
    require => Package['sudo'],
  }
}
