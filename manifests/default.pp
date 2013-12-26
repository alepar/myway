Exec {
	path => "/usr/local/bin:/bin:/usr/bin",
}

$nginx_conf = "/etc/nginx/nginx.conf"

$mysql_password = "root_pass"
$mysql = ["mysql-client", "mysql-server", "php5-fpm"]
$web = ["nginx"]
$java = ["openjdk-7-jdk", "maven"]

package { $web: 
	ensure => "installed" 
}

package { $java: 
	ensure => "installed" 
}

package { $mysql:
	ensure => "installed"
}

file { $nginx_conf:
	source => "/vagrant/etc/nginx.conf",
	require => Package[$web]
}

exec { "Set MySQL server root password":
	subscribe => [ Package["mysql-server"], Package["mysql-client"] ],
	refreshonly => true,
	unless => "mysqladmin -uroot -p$mysql_password status",
	command => "mysqladmin -uroot password $mysql_password",
}

exec { "Restart nginx":
	subscribe => [ Package["nginx"], File[$nginx_conf] ],
	command => "/etc/init.d/nginx restart",
	refreshonly => true,
}