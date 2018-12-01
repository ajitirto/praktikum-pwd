<?php
session_start();
echo " anda berhasil login sebagai ".$_SESSION['Username']." dan anda 
terdaftar sebagai ".$_SESSION['Status'];
?>
<br>
Silahkan log out dengan klik link<a href='logout.php'> DI SINI</a>