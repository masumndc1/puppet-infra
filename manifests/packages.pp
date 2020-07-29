class freebsd::packages {
  $packages = [
    'vim',
    'git',
    'iftop',
    'htop',
  ]

  if ( $facts['os']['family'] == 'FreeBSD' ) 
    and ( $facts['os']['name'] == 'FreeBSD' ) {
      package { $packages:
        ensure => 'latest',
        tag    => 'pkg',
      }
  }
}
