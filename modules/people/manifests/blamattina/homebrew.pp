class people::blamattina::homebrew {
  $homebrew_packages = [
    'ag',
    'elixir',
    'gnu-sed',
    'tmux',
    'tree',
    'wget',
    'zsh',
    'z',
  ]
  package { $homebrew_packages: }

  # Text Editor
  package {
    'vim': ensure => present, install_options => [ '--override-system-vi' ]
  }
}
