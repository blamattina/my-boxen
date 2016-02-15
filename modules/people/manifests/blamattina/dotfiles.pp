class people::blamattina::dotfiles {
  include git

  $home = "/Users/${boxen_user}"
  $dotfiles_folder = "${boxen::config::srcdir}/dotfiles"

  # Install dotfiles and oh my zsh
  repository { "${home}/.oh-my-zsh":
    source => 'robbyrussell/oh-my-zsh'
  }

  repository { $dotfiles_folder:
    source => 'blamattina/dotfiles',
    require => Repository["${home}/.oh-my-zsh"]
  }

  # Configuration management
  homebrew::tap { 'thoughtbot/formulae': }
  package { 'rcm': ensure => present }

  exec  { 'link dotfiles':
    command => "rcup -d ${dotfiles_folder}",
    cwd     => $home,
    user    => $::boxen_user,
    require => [Repository[$dotfiles_folder], Package['rcm']]
  }

  # Load git config out of dotfiles
  git::config::global { 'include.path':
    value => '~/.gitconfig.dotfiles',
    require => Exec['link dotfiles']
  }
}
