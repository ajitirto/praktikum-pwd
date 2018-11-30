<html>
	<body>
		<%
			dim numvisits
			response.cookies("NumVisits").Expire=date+365
			numvisits=request.cookies("NumVisits")
			
			if numisits="" then
			response.cookies("NumVisits") = 1
			response.write("Selamat datang! ini adalah pertama kali kamu mengunjungi halaman ini. ")
			else
			response.cookies("NumVisits")=numvisits+1
			response.write("Kamu sudah mengunjungi ")
			response.write("halaman ini " & numvisits)
			if numvisits=1 then
			response.write " Kali sebelumnya"
			else
			response.write "Kai sebelumnya"
			end if
			end if
		%>
	</body>
</html>