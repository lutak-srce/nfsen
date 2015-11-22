# Class: nfsen::params
#
# This module contains defaults for nfsen modules
#
class nfsen::params {

  $ensure           = 'present'
  $version          = undef
  $status           = 'enabled'
  $file_mode        = '0600'
  $file_owner       = 'root'
  $file_group       = 'root'
  $autorestart      = true
  $dependency_class = 'nfsen::dependency'
  $my_class         = undef

  # install package depending on major version
  case $::osfamily {
    default: {}
    /(RedHat|redhat|amazon)/: {
      $package           = 'nfsen'
      $service           = 'nfsen'
    }
    /(debian|ubuntu)/: {
    }
  }

}
