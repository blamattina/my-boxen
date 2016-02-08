class people::blamattina {
  include people::blamattina::osx_config
  include people::blamattina::homebrew
  include people::blamattina::homebrew_casks
  include people::blamattina::repositories
  include people::blamattina::links
  include people::blamattina::node

  include chrome
  include spectacle
  include dropbox
  include alfred
}
