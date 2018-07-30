class profile::ssh_server {

package { 'openssh-server':
  ensure  => present,
  }
  
service { 'sshd':
  ensure  => 'running',
  enable  => 'true',
  }
  
ssh_authorized_key { 'root@puppet-learning.wheezylab.net':
  ensure  => present,
  user  => 'root',
  type  => 'ssh_rsa',
  key   => '',
  }
 
}
