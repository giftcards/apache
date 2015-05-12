class apache (

  $vhostgroup = $apache::params::vhostgroup,
  $vhostpurge = $apache::params::vhostpurge,
  $services = $apache::params::services,
  $packages = $apache::params::packages,

) inherits apache::params {

  include apache::packages
  include apache::config
  include apache::services

}
