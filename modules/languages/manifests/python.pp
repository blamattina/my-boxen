class languages::python (
  $global     = heira('languages::python::global', '3.5.1'),
  $virtualenv = heira('languages::python::virtualenv', 'v20160202')
) {
  include python

  python::version { $global: }
  class { 'python::global': version => $global }

  python::plugin { 'pyenv-virtualenv':
    ensure => $virtualenv,
    source => 'yyuu/pyenv-virtualenv'
  }
}
