
class tarantool::server($package_name='tarantool-client', $version='latest') {
    package { $package_name:
        ensure => $package_version
    }
}
