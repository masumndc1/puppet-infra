class profile::base {
  include profile::base_packages
  include profile::if.pp
  include profile::partition.pp
  include profile::sudo.pp
  include profile::user.pp
  include profile::service.pp
  include profile::upgrade.pp
  include profile::packages.pp

  #the base profile should include component modules that will be on all nodes

}
