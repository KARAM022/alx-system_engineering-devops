# CMNT
exec { 'killmenow':
    command => '/usr/bin/pkill killmenow',
    path    => ['/usr/bin', '/bin'],
}
