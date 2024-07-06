exec { 'fix_phpp':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => ['/bin', '/usr/bin', '/usr/local/bin'],
  onlyif  => "grep -q 'phpp' /var/www/html/wp-settings.php",
}
