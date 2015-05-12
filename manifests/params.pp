class apache::params {
  $vhostgroup = false
  $vhostpurge = false
  $packages = [ 'httpd', 'mod_ssl' ]
  $services = [ 'httpd' ]
}
