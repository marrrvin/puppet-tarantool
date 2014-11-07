
class tarantool::client($package_name='tarantool-client', $package_ersion='latest') {
    package { $package_name:
      ensure => $package_version
    }
}
