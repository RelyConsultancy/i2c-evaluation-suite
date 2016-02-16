class i2c_setup {
  include composer

  composer::exec { 'composer-install':
    cmd => 'install',
    cwd => '/var/www/backend',
    prefer_source => false,
    prefer_dist => true,
  }
}
