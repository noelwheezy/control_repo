class profile::agent_nodes {
 # include dockeragent
  #dockeragent::node {'web.wheezylab.net':}
  #dockeragent::node {'db.wheezylab.net':}
  #dockeragent::node {'minetest.wheezylab.net':}
  host { 'web.wheezylab.net':
   ensure => present,
   ip     => '192.168.1.148',
   host_aliases => 'web',
   }
   host { 'db.wheezylab.net':
   ensure => present,
   ip     => '192.168.1.147',
   host_aliases => 'db',
   }
   host { 'minetest.wheezylab.net':
   ensure => present,
   ip     => '192.168.1.149',
   host_aliases => 'minetest',
   }
  }
