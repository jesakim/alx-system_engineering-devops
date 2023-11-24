# Install Flask using pip3
exec { 'install flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
}

# Notify the user about the installation
notify { 'Flask installed successfully':
  require => Exec['install flask'],
}
