class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.wheezylab.net':}
  dockeragent::node {'db.wheezylab.net':}
  }
