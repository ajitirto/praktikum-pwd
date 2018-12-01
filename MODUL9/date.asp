<html>
	<body>
		Tanggal sekarang adalah : <%response.write(date())%>
		<br/>
		Waktu di server lokal adalah: <%response.write(time())%>
		Contoh format tanggal dan waktu :
		<%
			response.write(FormatDateTime(date(),Vbgeneraldate))
			response.write("<br/>")
			response.write(FormatDateTime(date(),Vblongdate))
			response.write("<br/>")
			response.write(FormatDateTime(date(),Vbshortdate))
			response.write("<br/>")
			response.write(FormatDateTime(date(),Vblongtime))
			response.write("<br/>")
			response.write(FormatDateTime(date(),Vbshorttime))
			
		%>
		Hari ini
		<%response.write(WeekdayName(weekday(date)))%>
		<br/>
		dan bulan ini 
		<%response.write(MonthName(month(date)))%>
	</body>
</html>