class profile::base {
  user {'admin':
    ensure => present,
  }
  include profile::shh_server
}
