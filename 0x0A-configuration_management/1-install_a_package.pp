# Install a specific version of flask (2.1.0)
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 freeze | grep flask==2.1.0',
  path    => ['/usr/bin', '/bin', '/usr/sbin', '/sbin'],
}

