class i2c_setup::dependencies {

  exec { 'composerinstall':
    cwd => '/var/www/backend',
    command => 'composer install'
  }

  file { 'composer.lock':
    ensure => present,
    require => Exec['composerinstall']
  }

#  composer::exec { 'composer-install':
#    cmd => 'install',
#    cwd => '/var/www/backend',
#    prefer_source => false,
#    prefer_dist => true,
#  }
}
