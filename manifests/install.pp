
class tarantool::install($package_name='tarantool', $package_version='latest') {
  package { $package_name:
    ensure => $package_version,
  }
}
