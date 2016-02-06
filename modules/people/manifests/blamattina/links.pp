class people::blamattina::links {
  $home = "/Users/${boxen_user}"

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${home}/dotfiles/zshrc"
  }

  file { "${home}/.aliases":
    ensure  => link,
    target  => "${home}/dotfiles/aliases"
  }
}
