define rabbitmq::user($password, $admin = false) {
  rabbitmq_user{$title:
    password => $password,
    admin    => $admin,
  }
}
