$web = ["nginx", "nodejs"]
$java = ["openjdk-7-jre"]
$dev = ["git"]

package { 
    $web: ensure => "installed" 
}

package { 
    $java: ensure => "installed" 
}

package {
	$dev: ensure => "installed"
}