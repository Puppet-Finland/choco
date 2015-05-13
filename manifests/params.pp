#
# == Class: choco::params
#
# Defines some variables based on the operating system
#
class choco::params {

    case $::osfamily {
        'Windows': {
            $choco_exe = 'C:\\ProgramData\\chocolatey\\bin\choco.exe'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
