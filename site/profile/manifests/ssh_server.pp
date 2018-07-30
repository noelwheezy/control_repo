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
  type  => 'ssh-rsa',
  key   => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrXaNzD0FhYq3RylPD1LADsku8r50aNuMDAB+tUbWbnGWXQ6S4qIAf6yQNG9c6G2vZZuImCKe/kuxX3kUVKwmp6NrBMeRvGXAZNO0pEeG+UkhJSGaUDr5ldJxcwh8TKXvzczII9Kwtek30WoO8TSbg+7EmFml5VqFMW0CGwP9Kt7Mf7MrYBzFl8rA//ZKed1mpUT2Fgq1xz5Ty2haaZQJ1jRqQwecnkHf27hlPCstvesV40fVbmK/3gV1E+CBBoin/0o/9eONubccz1suXRSM2OKUQj0gOsONeuRn3eEZd4bnG5fZx15E5DnQFVcscCu4nK2tTnMJhqOgt7E4Al7X1',
  }
 
}
