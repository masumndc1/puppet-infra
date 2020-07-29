class freebsd {
  include freebsd::packages
  include freebsd::hostname
  include freebsd::puppetservice
  include freebsd::update
  include freebsd::zsh
  include freebsd::partition
  include freebsd::sudo
  include freebsd::upgrade
}

