# Puppet script to create ssh config file
file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/home/Purity_Jepchirchir/.ssh/config',
  line   => '    PasswordAuthentication no',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/home/<your_username>/.ssh/config',
  line   => '    IdentityFile ~/.ssh/school',
}
