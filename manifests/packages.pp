class infra::packages {
  $_packages = lookup('packages')

  if ($facts['osfamily'] == 'Debian'
    or $facts['osfamily'] == 'Redhat') {
    $_packages.each | $pkg | {
      package { $pkg:
        ensure => 'installed',
        tag    => 'pkg',
      }
    }
  }
}
