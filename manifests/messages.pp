class infra::messages {
  notify { 'say_something':
    message => "Custom message from infra!"
  }
}
