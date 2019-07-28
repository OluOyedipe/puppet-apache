# @summary 
#    Installs the base apache package
#
class apache::install {
  package { 'httpd':
    ensure => 'present',
  }
}
