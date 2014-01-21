define rabbitmq::permissions(
  $configure_permission,
  $read_permission,
  $write_permission
) {
  rabbitmq_user_permission{$title:
    configure_permission => $configure_permission,
    read_permission      => $read_permission,
    write_permission     => $write_permission
  }
}
