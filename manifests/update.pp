class infra::update {
# example of if/elsif/else block
  if ( $facts['os']['family'] == 'Debian' )
    and ( $facts['os']['name'] == 'Ubuntu' ) {
    notify { 'whatOS':
      message => "Are you running Ubuntu"
    }
  }
}
