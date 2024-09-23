define infra::pkg_ver (
  $pkg,
) {
  exec { 'version':
    command => "${pkg} --version",
    path => '/usr/bin:/snap/bin',
    provider => shell,
    logoutput => 'true',
  }
}
