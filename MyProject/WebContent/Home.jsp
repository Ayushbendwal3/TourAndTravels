<!-- Tour And Travel Management  -->

<%@include file="db.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>DreamCaster ~ Travelicious</title>


	<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:20px 20px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-1{text-align:center}
.tg .tg-2{font-size:24px;border-color:inherit;text-align:center}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}

	body{margin: 0; padding: 0;background-color:black;}
		.head{width: 90%;height: 250px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(22.jpg); background-repeat: no-repeat;background-size:cover; /*background-attachment: fixed;*/}



		.nav{background-color:black; color: white; width: 90.1%; height: 50px;position: absolute;top: 275px;left: 69px;}
		.ul1{margin: 0px auto; padding: 10px;}
		.list{float: left; word-spacing: 10px; list-style: none; text-align: center;  padding: 0px 110px; line-height: 30px;}
		.head1{width: 90%;height: auto ; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}



        .btn{background-color:#81BEF7; font-size:20px; border-radius: 10px; text-decoration-line: none; padding:5px 10px;    }
</style>
</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list">HOME</li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
		<h2 align="center">PLACES TO VISIT</h2><br>
	<div align="center" class="tg-wrap" >
	<table class="tg">	
<% 
PreparedStatement ps = con.prepareStatement("Select * from packages");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%> 
<tr>
<td class="tg-2" align="center"><a href="ViewPlace.jsp?id=<%=rs.getString("id")%>"><img style="float: left;" width="250px" height="200px" src="ImageServlet?id=<%=rs.getString("id")%>" /></a><br>
 <a href="ViewPlace.jsp?id=<%=rs.getString("id")%>"><%=rs.getString(2)%></a>		
</td>
<%
if(rs.next())
{
%>
<td class="tg-2" align="center"><a href="ViewPlace.jsp?id=<%=rs.getString("id")%>"><img width="250px" height="200px" src="ImageServlet?id=<%=rs.getString("id")%>" /></a><br>	
<a href="ViewPlace.jsp?id=<%=rs.getString("id")%>"><%=rs.getString(2)%></a>
</td>
<%
}
if(rs.next())
{
%>
<td class="tg-2" align="center"><a href="ViewPlace.jsp?id=<%=rs.getString("id")%>"><img style="float: left;" width="250px" height="200px" src="ImageServlet?id=<%=rs.getString("id")%>" /></a><br>
<a href="ViewPlace.jsp?id=<%=rs.getString("id")%>"><%=rs.getString(2)%></a>
</td>
<%
}
}
%>
</table>
</div>
</div>
</div>
</body>
</html>
























