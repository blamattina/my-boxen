class people::blamattina {
  include people::blamattina::osx_config
  include people::blamattina::repositories
  include people::blamattina::homebrew
  include people::blamattina::homebrew_casks

  include chrome
  include spectacle
  include dropbox
  include alfred
}
