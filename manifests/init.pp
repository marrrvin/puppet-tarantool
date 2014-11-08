
class tarantool {
  Class['tarantool::install'] -> Class['tarantool::service']

  class { 'tarantool::install': }
  class { 'tarantool::service': }
}
