class minecraft {

file { '/opt/minecraft':
  ensure  => directory,
  }
file { '/opt/minecraft/server.jar':
  ensure  => file,
  source  => 'https://launcher.mojang.com/mc/game/1.13/server/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar',
  }
package { 'default-jre':
  ensure  => present,
  }
file { '/opt/minecraft/eula.txt':
  ensure  => file,
  content => 'eula=true',
  }
file { '/etc/systemd/system/minecraft.service':
  ensure  => file,
  source  => 'puppet:///modules/minecraft/minecraft.service',
  }
}
