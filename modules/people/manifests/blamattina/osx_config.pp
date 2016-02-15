class people::blamattina::osx_config {
  # Dock Settings
  include osx::dock::autohide
  include osx::dock::clear_dock
  class { 'osx::dock::position':
    position => 'left'
  }

  # Screen Zoom
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom

  # Keyboard Config
  include osx::keyboard::capslock_to_control
  include osx::global::key_repeat_delay

  class { 'osx::global::key_repeat_rate':
      rate => 2
  }

  # Make Developer Tools available in Safari (ie: right-click and see
  # Inspect Element)
  include osx::safari::enable_developer_mode

  # Finder Settings
  include osx::finder::show_all_filename_extensions
  include osx::finder::show_hidden_files
  include osx::finder::unhide_library
}
