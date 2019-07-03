<!-- Tour And Travel Management  -->

<%@page import="java.sql.*"%>
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
		.head1{width: 90%;height: 600px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}
				a{text-decoration: none; color:white;}
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
<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
	<h2 align="center">User Details</h2>
<div align="center">
	<form action="Search1.jsp" method="post" >
		<input type="text" name ="user" placeholder="Search Here"><input type="submit" value="search"><br><br>
	</form>
</div>

	<table border="1" >
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Contact No.</th>
		</tr>	
<% 
PreparedStatement ps = con.prepareStatement("Select * from user");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>
		<tr>
			<td><%=rs.getString(2)%></td>	
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(6) %></td>
		</tr>
<% 
}
%>
</table>	
</div>
</div>
</body>
</html>