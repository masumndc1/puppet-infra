class infra::neovim {
  $_localuser = lookup('localuser')

  if $facts['os']['family'] == 'Debian' {
    package { ['lua5.1',
            'luajit',
            'python3-neovim',
            ]:
      ensure => 'latest',
    }
  }

  if $facts['os']['family'] == 'Debian' {
    exec { 'snap install --beta nvim --classic':
      path => '/usr/bin',
    }
  }

  vcsrepo { "/home/$_localuser/.config/nvim":
    ensure     => latest,
    provider   => git,
    source     => 'https://github.com/LazyVim/starter',
  }
}
