class people::blamattina::dotfiles {
  $home = "/Users/blamattina"
  $dotfiles = "${home}/dotfiles"
  $dotfilesLocal = "${home}/dotfiles-local"

  # Dotfiles
  repository {
    $dotfiles: source => 'thoughtbot/dotfiles'
  }
  repository {
    $dotfilesLocal: source => 'blamattina/dotfiles'
  }
}
