define rabbitmq::exchange($type) {
  rabbitmq_exchange{$title:
    type     => $type,
    user     => $puppet::default_user,
    password => $puppet::default_pass,
  }
}
