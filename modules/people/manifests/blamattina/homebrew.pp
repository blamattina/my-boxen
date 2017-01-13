class people::blamattina::homebrew {
  $homebrew_packages = [
    'ag',
    'diff-so-fancy',
    'gnu-sed',
    'heroku',
    'tmux',
    'tree',
    'wget',
    'zsh',
    'z',
  ]
  package { $homebrew_packages: }

  homebrew::tap { 'neovim/neovim': }

  package { 'neovim':
    install_options => '--HEAD',
    ensure          => installed,
    require         => Homebrew::Tap['neovim/neovim']
  }
}
