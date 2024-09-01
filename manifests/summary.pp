class (
  $_arch = $facts['os']['architechture']
  $_uptime = $facts['system_uptime']
  $_family = $facts['os']['family']
  $_name = $ facts['os']['name']
  $_release = $ facts['os']['release']['full']
  $_distro = $ facts['os']['distro']['codename']
) infra::summary {
  file { '/home/root/summary.txt':
    content => template('infra/summary.erb')
  }
}
