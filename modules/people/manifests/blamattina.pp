class people::blamattina {
  include chrome
  include spectacle
  include dropbox
  include zsh
  include tmux
  include alfred

  $home = "/Users/brian"
  $dotfiles = "${home}/dotfiles"
  $dotfilesLocal = "${home}/dotfiles-local"

  # Dotfiles
  repository {
    $dotfiles: source => 'thoughtbot/dotfiles'
  }
  repository {
    $dotfilesLocal: source => 'blamattina/dotfiles'
  }

  # Configuration management
  homebrew::tap { 'thoughtbot/formulae': }
  package { 'rcm': ensure => present }

  # Text Editor
  package {
    'vim': ensure => present, install_options => [ '--override-system-vi' ]
  }

  # Dock Settings
  include osx::dock::autohide
  include osx::dock::clear_dock
  class { 'osx::dock::position':
    position => 'left'
  }

  # Screen Zoom
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom


}
