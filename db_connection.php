<?php
$host = 'localhost';
$db = 'grouptask';
$user = 'cst8285';
$password = 'password';

// Create a new mysqli instance
$mysqli = new mysqli($host, $user, $password, $db);

// Check the connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}
?>
