class infra::packages {
  $packages = [
    'vim',
    'git',
    'iftop',
    'htop',
  ]

  if ( $facts['os']['family'] == 'Debian' )
    and ( $facts['os']['name'] == 'Ubuntu' ) {
      package { $packages:
        ensure => 'latest',
        tag    => 'pkg',
      }
  }
}
