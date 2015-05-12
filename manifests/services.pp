class apache::services {

  service { $apache::services:
    ensure  => running,
    enable  => true,
    require => Package[$apache::packages],
  }
}
