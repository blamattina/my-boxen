class people::blamattina::homebrew_casks {
  include brewcask

  # brew cask installs that do not require special privilages

  $brewcasks = [
    '1password',           # 1password: https://agilebits.com/onepassword
    'aerial',              # ATV Screensavers: https://github.com/JohnCoates/Aerial/
    'backblaze',           # Backblaze: https://www.backblaze.com/
    'bartender',           # Bartender 2: https://www.macbartender.com/
    'chromium',            # Chromium: https://www.chromium.org/
    'dropbox',             # Dropbox: https://www.dropbox.com/
    'firefox',             # Firefox: https://www.mozilla.org/en-US/firefox/new/
    'google-chrome',       # Chrome: https://google.com/chrome/
    'marked',              # Marked 2: http://marked2app.com/
    'qsync-client',        # Qsybc Client: https://www.qnap.com/i/useng/utility/
    'slack',               # Slack: https://slack.com/
    'spectacle',           # Spectacle: https://www.spectacleapp.com/
    'superduper',          # SuperDuper: http://www.shirt-pocket.com/SuperDuper/
    'transporter-desktop', # FileTransporter: http://connecteddata.com/
  ]

  package { $brewcasks:
    provider => 'brewcask',
    require => Homebrew::Tap['caskroom/cask']
  }

  # installation of homebrew packages that require sudo

  sudoers { 'installer':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) SETENV:NOPASSWD: /usr/sbin/installer',
    ],
    type     => 'user_spec',
  }

  $sudo_brewcasks = [
    'alfred',       # Alfred 2: https://www.alfredapp.com/
    'elm-platform', # elm programming language: http://elm-lang.org/
  ]

  package { $sudo_brewcasks:
    provider => 'brewcask',
    require => [ Homebrew::Tap['caskroom/cask'], Sudoers['installer'] ]
  }
}
