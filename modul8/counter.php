<?php

session_start();
error_reporting();
?>
<html>
	<head>
		<title>Mengakses data</title>
	</head>
	<body>
		<?php
			$_SESSION["counter"]++;
			$_SESSION["nama_pengungjung"] = "Adul";
			echo "Selamat datang ". $_SESSION["nama_pengungjung"]."<br>";
			echo "Anda telah mengunjungi halaman ini sebanyak ". $_SESSION["counter"]."kali";
		?>
	</body>
</html>