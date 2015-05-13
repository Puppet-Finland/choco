#
# == Class: choco::install
#
# Install Chocolatey
#
class choco::install inherits choco::params
{
    exec { 'choco-install':
        command  => 'iex ((new-object net.webclient).DownloadString(\'https://chocolatey.org/install.ps1\'))',
        provider => powershell,
        creates  => $::choco::params::choco_exe,
    }
}


