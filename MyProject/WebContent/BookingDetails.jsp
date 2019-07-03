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
				<li class="list"><a href="ViewPackages.jsp">View Packages</a></li>
				<li class="list"><a href="UserDetails.jsp">View User Details</a></li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
	<h2 align="center">Booking Details</h2>

	<table border="1" >
		<tr>
			<th>Destination</th>
			<th>Travel Date</th>
			<th>Paid</th>
			<th>User_id</th>
			<th>Stay Amount</th>
			<th>Food Amount</th>
			<th>Travel Amount</th>
			<th>Total Amount</th>
			<th>Mode of Payment</th>
			<th>Booking_ID</th>
			<th>Clear Booking</th>
		</tr>	
<% 
PreparedStatement ps = con.prepareStatement("Select * from Booking");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>
		<tr>
			<td><%=rs.getString(1)%></td>	
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><a href="OnclickDetails.jsp?id=<%=rs.getInt(4)%>"><%=rs.getInt(4)%></a></td>
			<td><%=rs.getInt(5) %></td>
			<td><%=rs.getInt(6) %></td>
			<td><%=rs.getInt(7) %></td>
			<td><%=rs.getInt(8) %></td>
			<td><%=rs.getString(9) %></td>
			<td><%=rs.getInt(10) %></td>
			<td><a href="Delete.jsp?id=<%=rs.getInt(10)%>">CLEAR</a></td>
		</tr>
<% 
}
%>
</table>	
</div>
</div>
</body>
</html>