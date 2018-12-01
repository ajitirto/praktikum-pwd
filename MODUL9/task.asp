
<html>
	<body>
		<form method="post" action="task.asp">
		Nilai A adalah: <input type=text name="angka1" value=""><br /><br />
		Nilai B adalah: <input type=text name="angka2" value=""><br />
		<input type=submit value='Jumlahkan'>
		<input type=hidden name="action" value="jumlahkan">
	</form>

	<%
		action = lcase(request("action"))
		select case action
		case "jumlahkan"
		
		dim angka1
		angka1=Request.form("angka1")
		
		dim angka2
		angka2=Request.form("angka2")
		
		if angka1<>"" Then
		Response.Write("Nilai A adalah : " & angka1 & "<br />")
		End if
		if angka2<>"" Then
		Response.Write("Nilai B adalah : " & angka2 & "<br />")
		End if
		jumlah = cint(request("angka1")) + cint(request("angka2"))
		response.write "Jadi Nilai A ditambah Nilai B adalah: " & jumlah
		end select
	%>

	</body>
</html>

