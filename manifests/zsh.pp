class infra::zsh {
  $_localuser = hiera('localuser')
  package { 'zsh':
    ensure => 'latest',
    before => User["$_localuser"],
  }

  user { "$_localuser":
    shell   => '/bin/zsh',
    require => Package['zsh'],
  }

  file { "/home/$_localuser/.zshrc":
    ensure  => 'file',
    content => template('infra/zshrc.erb'),
    mode    => '0644',
    group   => "$_localuser",
    owner   => "$_localuser",
    require => Package['zsh'],
  }
}
