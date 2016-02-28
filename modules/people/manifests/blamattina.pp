class people::blamattina {
  include people::blamattina::osx_config
  include people::blamattina::homebrew
  include people::blamattina::homebrew_casks
  include people::blamattina::dotfiles

  # google hangouts from the comand line
  $python = hiera('languages::python::global')
  python::package { "hangups":
    package => 'hangups',
    python  => $python,
    require => Class['languages::python']
  }
}
