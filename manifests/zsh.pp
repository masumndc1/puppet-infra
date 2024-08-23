class infra::zsh {
# manage user
  package {'zsh':
    ensure => 'latest',
    before => User['masum'],
  }

  user { 'masum':
    shell   => '/bin/zsh',
    require => Package['zsh'],
  }
}
