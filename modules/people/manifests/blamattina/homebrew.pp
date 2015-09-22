class people::blamattina::homebrew {
  $homebrew_packages = [
    'ag',
    'tmux',
    'tree',
    'wget',
    'zsh',
    'z',
  ]
  package { $homebrew_packages: }

  # Configuration management
  homebrew::tap { 'thoughtbot/formulae': }
  package { 'rcm': ensure => present }

  # Text Editor
  package {
    'vim': ensure => present, install_options => [ '--override-system-vi' ]
  }
}
