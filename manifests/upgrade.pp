class infra::upgrade {
# upgrading ubuntu daily, nightly
  schedule { 'nightly':
    period => 'daily',
    range  => '21 - 22',
  }

  if ( $facts['os']['name'] == 'Debian') {
    exec { 'apt upgrade -y':
      schedule => 'nightly',
    }
  }
}
