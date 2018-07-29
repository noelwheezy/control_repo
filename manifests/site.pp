node default {
    }
node 'puppet.wheezylab.net' {
  include role::master_server
}
