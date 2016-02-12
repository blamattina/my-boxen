class people::blamattina::dotfiles {
  # Install dotfiles and oh my zsh
  $home = "/Users/${boxen_user}"
  $dotfiles_folder = "${boxen::config::srcdir}/dotfiles"

  # Install dotfiles and oh my zsh
  repository { "${home}/.oh-my-zsh":
    source => 'robbyrussell/oh-my-zsh'
  }

  repository { $dotfiles_folder:
    source => 'blamattina/dotfiles'
  }

  # Configuration management
  homebrew::tap { 'thoughtbot/formulae': }
  package { 'rcm': ensure => present }

  exec  { 'link dotfiles':
    command => "rcup -d ${dotfiles_folder}",
    cwd     => $home,
    user    => $::boxen_user
  }

}
