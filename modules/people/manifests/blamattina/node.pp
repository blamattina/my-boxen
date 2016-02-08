class people::blamattina::node {
  # Install flow using homebrew
  package { 'flow': }

  # node versions
  nodejs::version {
    ['0.10.41', '0.12.7', '4.1.2', '4.2.6', '5.5.0']:
  }

  # sets default node
  class {
  'nodejs::global':
    version => '5.5.0'
  }

  npm_module { 'eslint':
    module => 'eslint',
    version => '~> 1.10.0',
    node_version => '*'
  }

  npm_module { 'coffee-script':
    module => 'coffee-script',
    version => '~> 1.10.0',
    node_version => '*'
  }

  npm_module { 'coffeelint':
    module => 'coffeelint',
    version => '~> 1.14.0',
    node_version => '*'
  }
}
