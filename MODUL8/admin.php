<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED);
session_destroy();


if(!isset($_SESSION['Username'])){
header("location:tugas_login.php");}

echo " Selamat datang ".$_SESSION['Username'];
?>

<h1>Administrator web page</h1>

<br>
Silahkan log out dengan klik link<a href='tugas_login.php'> DI SINI</a>