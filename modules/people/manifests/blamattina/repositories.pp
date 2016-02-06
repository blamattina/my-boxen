class people::blamattina::repositories {
  $home = "/Users/${boxen_user}"

  repository { "${home}/.oh-my-zsh":
    source => "robbyrussell/oh-my-zsh"
  }

  repository { "${home}/dotfiles":
    source => "blamattina/dotfiles"
  }
}
