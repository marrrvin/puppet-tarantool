
class tarantool::client($package_name='tarantool-client', $package_version='latest') {
  package { $package_name:
    ensure => $package_version,
  }
}
