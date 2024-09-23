class infra::hostname {
  $_os = lookup('whatos')
  $_pkg = lookup('what_pkg',undef,undef,'nvim')
  notify { 'MD5_hash':
    message => md5( $facts['fqdn'] )
  }
  # Include the MD5 hash in the result string
  $result = @("END")

    The MD5 hash for the node name is
    ${md5( $facts['fqdn'] )}
    and os is $_os
  END

  notify { 'nodename_hash':
    message => "$result"
  }

  infra::pkg_ver {$_pkg:
    pkg => $_pkg,
  }
}
