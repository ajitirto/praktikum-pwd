<?php
	session_start();
	echo "Anda telah login sebagai ". $_session['username']."dan anda terdaftar sebagai ".$_session['status'];
?>
<br>
Silahkan logout dengan klik link <a href="logout.php"> disini </a>