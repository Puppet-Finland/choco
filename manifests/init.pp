#
# == Class: choco
#
# Setup Chocolatey
#
# == Parameters
#
# [*manage*]
#   Manage Chocolatey using this module. Valid values true (default) and false.
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
    Boolean $manage = true

) inherits choco::params
{

if $manage {
    include ::choco::install
}
}
