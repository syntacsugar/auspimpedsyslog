<?php
# Create a default admin user
include 'inc/global.inc.php';
include 'inc/classes/Sentinel.php';

Sentinel::init();
Sentinel::create();
$username = 'sysadmin';
$password = 'syspassword';

echo "Creating user with credentials: sysadmin:syspassword\n";

Sentinel::setAdmin($username,$password);
Sentinel::save();

?>
