
class tarantool::client ($version = 'latest') {
  package { 'tarantool-client':
    ensure => $version
  }
}
