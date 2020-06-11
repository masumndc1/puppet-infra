$packages = [
  'vim',
  'git',
  'puppet5',
  'iftop',
  'htop',
  'zsh',
]

if ( $facts['os']['family'] == 'FreeBSD' ) 
  and ( $facts['os']['name'] == 'FreeBSD' ) 
   and ( $facts['os']['release']['major'] == '12' ) {
       package { $packages:
         ensure => 'latest',
       }
}

