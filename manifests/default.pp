$web = ["nginx", "nodejs"]
$java = ["openjdk-7-jre"]

package { $web: 
  ensure => "installed" 
}

package { 
  $java: ensure => "installed" 
}