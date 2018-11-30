<!--

-Buat database informatika

Create database "informatika";

-Membuat sebuah table user sebagai berikut

create table user(
username varchar(100) primary key,
password varchar(100),
nama varchar(100),
status varchar(100)
);

-insert 2 buah data sebagai berikut

insert into user(username,password,nama,status)
values("admin","1234","admin aplikasi","administrator");

insert into user(username,password,nama,status)
values("adul","1111","adul adullah","member");

-->
<?php
	session_start();
	error_reporting();
	mysql_connect("localhost","root","");
	mysql_select_db("informtaika");
	
	$username = $_POST["username"];
	$password = $_POST["password"];
	$submit = $_POST["submit"];
	
	if($sbumit){
		$sql = "select * from user where username='$username' and password='$password'";
		$query = mysql_query($sql);
		$row = mysql_fetch_array($query);
		if($row['username'] !="" ){
			//behasil login
			$_SESSION['username'] = $row['username'];
			$_SESSION['status'] = $row['status'];
?>
		<script language script = 'javasript'>
		alert("Anda telah login sebagai <?php echo $row['username'];?>");
		document.location = 'hasillogin.php';
		</script>
		<?php
		}
		else{
			//gagal login
		?>
		<script language = "javascript">
			alert("Gagal login");
			document.location="logn.php";
		</script>
		<?php
		}
	}
?>
<form method="post" action="login.php">
<p align="center">
	Username = <input type="text" name="username"><br>
	Password = <input type="password" name ="password"><br>
	<input type="submit" name ="submit">
</p>
</form>