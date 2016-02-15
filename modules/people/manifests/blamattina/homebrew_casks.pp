class people::blamattina::homebrew_casks {
  include brewcask

  # allow installation of homebrew packages that require sudo
  sudoers { 'installer':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) SETENV:NOPASSWD: /usr/sbin/installer',
    ],
    type     => 'user_spec',
  }

  # Private cloud storage: http://connecteddata.com
  package { 'transporter-desktop':
    provider => 'brewcask',
    require => Homebrew::Tap['caskroom/cask']
  }

  # Cloud backup: https://www.backblaze.com/
  package { 'backblaze':
    provider => 'brewcask',
    require => Homebrew::Tap['caskroom/cask']
  }

  # Apple TV screensavers: https://github.com/JohnCoates/Aerial
  package { 'aerial':
    provider => 'brewcask',
    require => Homebrew::Tap['caskroom/cask']
  }

  # marked markdown preview: http://marked2app.com/
  package { 'marked':
    provider => 'brewcask',
    require => Homebrew::Tap['caskroom/cask']
  }

  # elm programming language: http://elm-lang.org/
  package { 'elm-platform':
    provider => 'brewcask',
    require => [ Homebrew::Tap['caskroom/cask'], Sudoers['installer'] ]
  }

}
