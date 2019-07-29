# @summary
#   Manages any apache configuration
#
class apache::config {
  file { 'apache_config': 
    ensure => $apache::config_ensure,
    path   => $apache::config_path,
    source => "puppet:///modules/apache/${osfamily}.conf",
    mode   => $apache::config_mode,
    owner  => $apache::config_owner,
    group  => $apache::config_group,
  }
}

