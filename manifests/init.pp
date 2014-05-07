# Class: docker_fixes
#
# This module manages docker_fixes
#
# Parameters: none
#
# Actions:
#         * fix permissions for /usr/bin/sudo
#
# Requires: see Modulefile
#
# Sample Usage:
#

class docker_fixes (
  $package_ensure = 'present'
){
    # the permission of /usr/bin/sudo are screwed up
    # let's fix them!

    package { 'sudo':
        ensure => $package_ensure,
    }

    file { '/usr/bin/sudo':
      ensure => present,
      mode   => '4755',
    }
}
