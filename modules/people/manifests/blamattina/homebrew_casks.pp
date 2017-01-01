class people::blamattina::homebrew_casks {
  include brewcask

  # brew cask installs that do not require special privilages

  $brewcasks = [
    '1password',            # 1password: https://agilebits.com/onepassword
    'adobe-creative-cloud', # adobe creative cloud: http://adobe.com
    'aerial',               # ATV Screensavers: https://github.com/JohnCoates/Aerial/
    'backblaze',            # Backblaze: https://www.backblaze.com/
    'bartender',            # Bartender 2: https://www.macbartender.com/
    'bittorrent-sync',      # Sync: https://getsync.com/
    'caffeine',             # Caffeine: http://lightheadsw.com/caffeine/
    'chromium',             # Chromium: https://www.chromium.org/
    'dropbox',              # Dropbox: https://www.dropbox.com/
    'firefox',              # Firefox: https://www.mozilla.org/en-US/firefox/new/
    'google-chrome',        # Chrome: https://google.com/chrome/
    'marked',               # Marked 2: http://marked2app.com/
    'slack',                # Slack: https://slack.com/
    'spectacle',            # Spectacle: https://www.spectacleapp.com/
    'superduper'            # SuperDuper: http://www.shirt-pocket.com/SuperDuper/
  ]

  package { $brewcasks:
    provider => 'brewcask',
    require => Homebrew::Tap['caskroom/cask']
  }

  # installation of homebrew packages that require sudo
  $sudo_brewcasks = [
    'alfred',       # Alfred 3: https://www.alfredapp.com/
  ]

  package { $sudo_brewcasks:
    provider => 'brewcask',
    require => [ Homebrew::Tap['caskroom/cask'], Sudoers['installer'] ]
  }
}
