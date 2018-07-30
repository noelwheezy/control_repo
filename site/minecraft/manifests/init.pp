class minecraft (

$url = 'https://launcher.mojang.com/mc/game/1.13/server/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar',
$install_dir = '/opt/minecraft'
){
file { '$install_dir':
  ensure  => directory,
  }
  
file { "${install_dir}/server.jar":
  ensure  => file,
  source  => '$url',
  before  => Service['minecraft'],
  }
  
package { 'default-jre':
  ensure  => present,
  }
  
file { "${install_dir}/eula.txt":
  ensure  => file,
  content => 'eula=true',
  }
  
file { '/etc/systemd/system/minecraft.service':
  ensure  => file,
  content  => epp('minecraft/minecraft.service',{
  install_dir  =>  $install_dir
  })
  }
  
service { 'minecraft':
  ensure  => running,
  enable  => true,
  require =>  [Package['default-jre'],File["${install_dir}/eula.txt"],File['/etc/systemd/system/minecraft.service']],
  }
  
}
