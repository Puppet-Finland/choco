#
# == Class: choco
#
# Setup Chocolatey
#
# == Parameters
#
# [*manage*]
#   Manage Chocolatey using this module. Valid values 'yes' (default) and 'no'. 
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class choco
(
    $manage = 'yes'

) inherits choco::params
{

if $manage == 'yes' {
    include ::choco::install
}
}
