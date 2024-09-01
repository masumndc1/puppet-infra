class infra {
  include infra::hostname
  include infra::neovim
  include infra::packages
  include infra::partition
  include infra::sudo
  include infra::summary
  include infra::zsh
}
