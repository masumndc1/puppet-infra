class infra::packages {
  $_packages = hiera('packages')

  if ( $facts['os']['family'] == 'Debian' )
    and ( $facts['os']['name'] == 'Ubuntu' ) {
    $_packages.each | $pkg | {
      package { $pkg:
        ensure => 'installed',
        tag    => 'pkg',
      }
    }
  }
}
