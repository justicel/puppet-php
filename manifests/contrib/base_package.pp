# == Class: php::contrib::base_package
#
# Install php base package.
#
# === Parameters
#
# [*ensure*]
#   The ensure value
#
# [*provider*]
#   The provider
#
# === Variables
#
# No variables
#
# === Examples
#
#
#
# === Authors
#
#
#
# === Copyright
#
#
#
define php::contrib::base_package(
  $ensure,
  $provider
) {

  $package = $::osfamily ?
    'RedHat' => 'php-common',
    'Debian' => 'php5-common',
    default  => '',
  }

  if !defined(Package[$package]) {
    package { $package:
      ensure 	 => $ensure,
      provider => $provider
    }
  }

}
