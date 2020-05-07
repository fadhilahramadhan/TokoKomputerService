<?php
$servername = "inf.co.id";
$username = "root";
$password = "";
$dbname = "db_toko_komputer";
 
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi database Terputus" );
} 
?>