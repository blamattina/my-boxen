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

  repository {
    $dotfiles: source => 'thoughtbot/dotfiles'
  }
  repository {
    $dotfilesLocal: source => 'blamattina/dotfiles'
  }
}
