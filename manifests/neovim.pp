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
      creates => '/snap/nvim/current/usr/bin/nvim',
    }
  }

  vcsrepo { [ "/home/$_localuser/.config/nvim",
              "/home/root/.config/nvim" ]:
    ensure     => latest,
    provider   => git,
    source     => 'https://github.com/LazyVim/starter',
  }
}
