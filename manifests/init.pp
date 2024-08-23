class infra {
  include infra::packages
  include infra::hostname
  include infra::zsh
  include infra::partition
  include infra::sudo
}
