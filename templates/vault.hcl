backend "mysql" {
  username = "{{ database.username }}"
  password = "{{ database.password }}"
  database = "{{ database.database }}"
  address  = "{{ database.hostname }}"
}

listener "tcp" {
  address                         = "127.0.0.1:8200"
  tls_disable                     = "true"
  proxy_protocol_behavior         = "use_always"
  proxy_protocol_authorized_addrs = "127.0.0.1"
}

disable_mlock = true
