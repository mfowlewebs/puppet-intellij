# Public: Install IntelliJ IDEA to /Applications
#
# Sample Usage:
#
#  class { 'intellij':
#    edition => 'community',
#    version => '14.0'
#  }
#
class intellij($edition='community', $version='14.0') {

  case $edition {
    'community': {
      $edition_real = 'IC'
    }
    'ultimate': {
      $edition_real = 'IU'
    }
    default: {
      fail('Class[intellij]: parameter edition must be community or ultimate')
    }
  }

  package { "IntelliJ-IDEA-${edition_real}-${version}":
     ensure => "absent"
#    provider => 'appdmg_eula',
#    source   => "http://download.jetbrains.com/idea/idea${edition_real}-${version}.dmg",
  }

}
