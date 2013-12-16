$nginx_conf = "/etc/nginx/nginx.conf"

$web = ["nginx", "nodejs"]
$java = ["openjdk-7-jdk", "maven"]

package { $web: 
	ensure => "installed" 
}

package { $java: 
	ensure => "installed" 
}

file { $nginx_conf:
	source => "/vagrant/etc/nginx.conf",
	require => Package[$web]
}

exec { "Restart nginx":
	subscribe => [ Package["nginx"], File[$nginx_conf] ],
	command => "/etc/init.d/nginx restart",
	refreshonly => true,
}