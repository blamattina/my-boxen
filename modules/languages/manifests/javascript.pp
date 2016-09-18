class languages::javascript (
  $versions = heira('languages::javascript::versions', ['5.5.0']),
  $global   = heira('languages::javascript::global', '5.5.0')
) {
  # Install flow using homebrew http://flowtype.org/
  package { 'flow': }

  nodejs::version { $versions: }
  class { 'nodejs::global': version => $global }

  npm_module { 'create-react-app':
    module       => 'create-react-app',
    version      => '~> 0.4.2',
    node_version => '*'
  }

  npm_module { 'eslint':
    module       => 'eslint',
    version      => '~> 3.5.0',
    node_version => '*'
  }

  npm_module { 'coffee-script':
    module       => 'coffee-script',
    version      => '~> 1.10.0',
    node_version => '*'
  }

  npm_module { 'coffeelint':
    module       => 'coffeelint',
    version      => '~> 1.15.0',
    node_version => '*'
  }

  npm_module { 'diff-so-fancy':
    module       => 'diff-so-fancy',
    version      => '~> 0.11.0',
    node_version => '*'
  }
}
