class people::blamattina::python {
  include python

  $python3 = '3.5.1'

  python::version { '2.7.11': }
  python::version { $python3: }

  class { 'python::global':
      version => '3.5.1'
  }

  python::package { "hangups for ${python3}":
    package => 'hangups',
    python => $python3
  }

  python::plugin { 'pyenv-virtualenv':
    ensure => 'v20160202',
    source => 'yyuu/pyenv-virtualenv',
  }
}
