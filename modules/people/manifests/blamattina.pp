class people::blamattina {
  include people::blamattina::osx_config
  include people::blamattina::dotfiles
  include people::blamattina::homebrew
  include people::blamattina::homebrew_casks

  include chrome
  include spectacle
  include dropbox
  include alfred

  # Node JS
  nodejs::version { '0.12': }
}
