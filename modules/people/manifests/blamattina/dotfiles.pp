class people::blamattina::dotfiles {
  include git

  $home = "/Users/${boxen_user}"
  $dotfiles_folder = "${boxen::config::srcdir}/dotfiles"

  # neovim python bindings
  $python = hiera('languages::python::global')
  python::package { 'neovim':
    package => 'neovim',
    python  => $python,
    require => Class['languages::python']
  }

  # Install dotfiles, tmuxifier, and oh my zsh
  repository { "${home}/.oh-my-zsh":
    source => 'robbyrussell/oh-my-zsh'
  }

  repository { "${home}/.tmuxifier":
    source =>  'jimeh/tmuxifier'
  }

  repository { $dotfiles_folder:
    source => 'blamattina/dotfiles',
    require => Repository["${home}/.oh-my-zsh", "${home}/.tmuxifier"]
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
