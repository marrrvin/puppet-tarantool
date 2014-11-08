
define tarantool::instance (
  $spaces={},
  $enable=true,
  $slab_alloc_arena=0.1,
  $primary_port=3301,
  $secondary_port=33014,
  $admin_port=33015,
  $rows_per_wal=50,
  $pid_file="/var/run/tarantool.${name}.pid"
) {

  $template = 'tarantool/instance.cfg.erb'
  $config_file = "/etc/tarantool/instances.available/${name}.cfg"

  file { $config_file:
    ensure => 'file',
    content => template($template),
    owner   => 'root',
    group   => 'root',
    mode    => '644',
  }

  if ($enable) {
    file { "/etc/tarantool/instances.enabled/${name}.cfg":
      ensure => 'link',
      target => $config_file,
      owner   => 'root',
      group   => 'root',
      mode    => '644',
      require => File[$config_file]
    }
  }
}
