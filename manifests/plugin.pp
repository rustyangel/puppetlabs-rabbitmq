define rabbitmq::plugin($ensure) {
  rabbitmq_plugin{$title:
    ensure => $ensure,
  }
}
