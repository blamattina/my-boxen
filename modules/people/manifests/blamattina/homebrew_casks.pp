class people::blamattina::homebrew_casks {
  include brewcask

  # casks
  package { 'transporter-desktop': provider => 'brewcask' }
  package { 'backblaze': provider => 'brewcask' }
  package { 'aerial': provider => 'brewcask' }
}
