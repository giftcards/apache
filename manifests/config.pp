class apache::config {

  File { notify => Service[$apache::services], }

  if $apache::vhostgroup == false {
    file {
      '/etc/httpd/conf/vhosts':
        ensure  => directory,
        owner   => 'root',
        group   => 'root',
        purge   => false,
        recurse => true;
    }
  } else {
    file {
      '/etc/httpd/conf/vhosts':
        ensure  => directory,
        owner   => 'root',
        group   => 'root',
        purge   => $apache::vhostpurge,
        recurse => true,
        source  => "puppet:///modules/apache/vhosts/${apache::vhostgroup}";
    }
  }

  file {

    '/etc/httpd/conf/httpd.conf':
      ensure  => present,
      source  => 'puppet:///modules/apache/httpd.conf';

    '/etc/httpd/conf.d/ssl.conf':
      ensure => present,
      source => 'puppet:///modules/apache/ssl.conf';

    '/etc/httpd/conf.d/welcome.conf':
      ensure => absent;
  }

}
