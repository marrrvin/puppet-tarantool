
include tarantool::server
include tarantool::client

tarantool::instance { 'test': 
  enable => true,
  spaces => ['one'],
  slab_alloc_arena => 1,
  primary_port => 53013,
  secondary_port => 53014,
  admin_port => 53015
}

