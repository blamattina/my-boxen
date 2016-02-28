class languages::ruby (
  $versions = hiera('languages::ruby::versions', ['2.3.0']),
  $global   = hiera('languages::ruby::global', '2.3.0')
) {
  ruby::version { $versions: }
  class { 'ruby::global': version => $global }
}
