define rabbitmq::vhost($ensure, $user = $rabbitmq::default_user) {
  rabbitmq_vhost{$title:
    ensure => $ensure,
    user => $user,
  }
}

