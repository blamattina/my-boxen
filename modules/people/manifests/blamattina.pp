class people::blamattina {
  include chrome
  include spectacle
  include dropbox
  include zsh
  include tmux

  $home = "/Users/brian"
  $dotfiles = "${home}/dotfiles"
  $dotfilesLocal = "${home}/dotfiles-local"

  repository {
    $dotfiles: source => 'thoughtbot/dotfiles'
  }
  repository {
    $dotfilesLocal: source => 'blamattina/dotfiles'
  }
}
