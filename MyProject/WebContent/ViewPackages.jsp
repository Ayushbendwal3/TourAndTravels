<!-- Tour And Travel Management  -->

<%@page import="java.io.*"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>DreamCaster ~ Travelicious</title>

	<style type="text/css">
	body{margin: 0; padding: 0;background-color:black;}
		.head{width: 90%;height: 250px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(22.jpg); background-repeat: no-repeat;background-size:cover; /*background-attachment: fixed;*/}



		.nav{background-color:black; color: white; width: 90.1%; height: 50px;position: absolute;top: 275px;left: 69px;}
		.ul1{margin: 0px auto; padding: 10px;}
		.list{float: left; word-spacing: 3px; list-style: none; text-align: center;  padding: 0px 90px; line-height: 30px;}
		.head1{width: 90%;height: auto; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}
		a{text-decoration: none; color:white;}
		



        .btn{background-color:#81BEF7; font-size:20px; border-radius: 10px; text-decoration-line: none; padding:5px 10px;    }



		
	</style>

</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list"><a href="AddTourPackages.jsp">Add Packages</a></li>
				<li class="list"><a href="BookingDetails.jsp">View Booking Details</a></li>
				<li class="list"><a href="UserDetails.jsp">View User Details</a></li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
<div class="head1" style="background-color: white;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
	<h2 align="center">Package Details</h2>
<div align="center">
	<form action="Search.jsp" method="post" >
		<input type="text" name ="place" placeholder="Destination"><input type="submit" value="search"><br><br>
	</form>
</div>

	<table border="1" >
		<tr>
			<th>Place</th>
			<th>Stay</th>
			<th>Food</th>
			<th>Bus</th>
			<th>Train</th>
			<th>Airlines</th>
			<th>Day</th>
			<th>Night</th>
			<th>Total</th>
			<th>Photo</th>
		</tr>	
<% 
PreparedStatement ps = con.prepareStatement("Select * from packages");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>
		<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getInt(6)%></td>
			<td><%=rs.getInt(7)%></td>
			<td><%=rs.getInt(8)%></td>
			<td><%=rs.getInt(9)%></td>
			<td><%=rs.getInt(10)%></td>
			<td><%=rs.getString(11)%></td>
			<td><%=rs.getString(12)%></td>
			<td><%=rs.getInt(13) %></td>
			<td><img width="150px" height="100px" src="ImageServlet?id=<%=rs.getString("id")%>" /></td>
		</tr>
<% 
}
%>
</table>	
</div>
</div>
</body>
</html>