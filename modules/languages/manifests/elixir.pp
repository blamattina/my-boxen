class languages::elixir (
  $ensure = hiera('languages::elixir::ensure', 'v1.2')
) {
  package { 'elixir':
    ensure => $ensure
  }
}
