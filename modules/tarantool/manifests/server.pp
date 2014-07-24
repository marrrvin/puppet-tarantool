
class tarantool::server ($version = 'latest') {
  package { 'tarantool':
    ensure => $version
  }

  file { '/var/run/tarantool':
    ensure => 'directory',
    owner   => 'tarantool',
    group   => 'tarantool',
    require => Package['tarantool']
  }
}
