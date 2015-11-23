# == Class: rally
#
# Full description of class rally here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class rally(
  $verbose                 = false,
  $debug                   = false,
  $database_connection     = 'sqlite:////var/lib/rally/rally.sqlite',
  $database_idle_timeout   = 3600,
  $database_min_pool_size  = 1,
  $database_max_pool_size  = 10, 
  $database_max_retries    = 10, 
  $database_retry_interval = 10, 
  $database_max_overflow   = 20, 
) {

  include ::rally::params
  include ::rally::db

  Exec['link-default-config'] -> Rally_config<||> ~> Exec<| title == 'rally-manage db_sync' |>

  ensure_packages(['build-essential', 'libssl-dev', 'libffi-dev', 'python-dev',
                   'libxml2-dev', 'libxslt1-dev', 'libpq-dev', 'python-pip',
                   'libmysqlclient-dev', 'python-virtualenv'])

  group { 'rally': 
    ensure => present,
    system => true,
  }

  user { 'rally': 
    home   => '/opt/rally',
    gid    => 'rally',
    system => true,
  }

  file { '/opt/rally':
    ensure => directory,
    owner  => 'rally',
    group  => 'rally',
    mode   => '0755'
  }

  file { '/etc/rally':
    ensure => directory,
    owner  => 'rally',
    group  => 'root',
    mode   => '0770',
  }

  exec { 'retrieve_rally_install':
    command => '/usr/bin/wget -q https://raw.githubusercontent.com/openstack/rally/master/install_rally.sh -O /opt/rally/install_rally.sh',
    creates => '/opt/rally/install_rally.sh',
    user    => 'rally',
    require => File['/opt/rally'],
  }

  file { '/opt/rally/install_rally.sh':
    owner => 'rally',
    group => 'rally',
    mode  => '0755',
  }

  exec { 'create_virtualenv':
    command => '/usr/bin/virtualenv /opt/rally/rally',
    user    => 'rally',
    cwd     => '/opt/rally',
    creates => '/opt/rally/rally/bin/pip',
    require => File['/opt/rally'],
  }

  # install requests and mysql before rally install
  exec { 'pip_install_deps':
    command => '/opt/rally/rally/bin/pip install \'requests[security]\' mysql',
    user    => 'rally',
    cwd     => '/opt/rally',
    creates => '/opt/rally/rally/lib/python2.7/site-packages/MySQLdb',
    require => Exec['create_virtualenv'],
  }

  exec { 'run_rally_install':
    command => '/bin/bash /opt/rally/install_rally.sh -y --no-recreate --target /opt/rally/rally',
    creates => '/opt/rally/rally/bin/rally',
    user    => 'rally',
    cwd     => '/opt/rally',
    require => [
      Exec['pip_install_deps'],
      File['/opt/rally/install_rally.sh'],
    ]
  }

  exec { 'link-default-config':
    command => '/bin/ln -s /opt/rally/rally/etc/rally/rally.conf /etc/rally/rally.conf',
    creates => '/etc/rally/rally.conf',
    require => [
      File['/etc/rally'],
      Exec['run_rally_install'],
    ],
  }

  file { '/usr/bin/rally-manage':
    ensure  => link,
    target  => '/opt/rally/rally/bin/rally-manage',
    require => Exec['run_rally_install'],
  }

  file { '/usr/bin/rally':
    ensure => link,
    target => '/opt/rally/rally/bin/rally',
    require => Exec['run_rally_install'],
  }

  # basic service config
  rally_config {
    'DEFAULT/verbose': value => $verbose;
    'DEFAULT/debug':   value => $debug;
  }


}
