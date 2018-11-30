<html>
	<body>
		<form action="form.asp" method="get">
			Nama kamu : <input type="text" name="fname" size="20"/>
			Pilih Mobil favorit kamu:
			<input type="radio" name="cars"
				<%if cars="BMW"  then response.write("checked")%>
			value = "BMW">BMW</input>
			<br/>
			<input type="radio" name="cars"
				<%if cars="Kijang"  then response.write("checked")%>
			value = "Kijang">Kijang</input>
			<br/>
			<input type="radio" name="cars"
				<%if cars="Timor"  then response.write("checked")%>
			value = "Timor">Timor</input>
			<input type="submit" value="submit"/>
		</form>
		<%
			dim fname
			fname=request.QueryString("fname")
			dim cars
			cars=Request.Form("cars")
			if fname<>"" then
			response.write("Hallo " &fname & "!<br/>")
			response.write("Bagaimana kabar kamu ?")
			End if
			if cars<>"" then
			response.write("<p>Mobil favorit kamu adalah : " & cars & "</p>")
			End if
		%>
	</body>
</html>