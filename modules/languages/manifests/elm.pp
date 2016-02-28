class languages::elm (
  $ensure = hiera('languages::elm::ensure', 'v0.16')
) {
  include brewcask

  package { 'elm-platform':
    provider => 'brewcask',
    ensure   => $global,
    require  => [ Homebrew::Tap['caskroom/cask'], Sudoers['installer'] ]
  }
}
