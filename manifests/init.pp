
class tarantool {
  Class['tarantool::server'] -> Class['tarantool::service']

  class { 'tarantool::server': }
  class { 'tarantool::client': }
  class { 'tarantool::service': }
}
