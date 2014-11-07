
class tarantool::service($ensure='running', $enable=true) {
    service { 'tarantool':
        ensure => $ensure,
        enable => $enable
    }
}
