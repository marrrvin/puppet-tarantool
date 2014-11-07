
class tarantool::service($service_name='tarantool', $ensure='running', $enable=true) {
    service { $service_name:
        ensure => $ensure,
        enable => $enable
    }
}
