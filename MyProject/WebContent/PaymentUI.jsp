<!-- Tour And Travel Management  -->

<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%
	HttpSession hs =  request.getSession();
	int Id_user = (int) hs.getAttribute("BB");

	String Place = request.getParameter("Name");

	PreparedStatement ps = con.prepareStatement("select * from packages where place =?");
	ps.setString(1, Place);
	ResultSet rs = ps.executeQuery();
	rs.next();
	int stay = rs.getInt(6);
	String Date = request.getParameter("DOT");
	String fd = request.getParameter("food");
	String trvl = request.getParameter("travel");
	int travel = Integer.parseInt(trvl);
	int food = Integer.parseInt(fd);
	int total = stay+food+travel;
	hs.setAttribute("Place", Place);
	hs.setAttribute("Stay", stay);
	hs.setAttribute("Date", Date);
	hs.setAttribute("Travel", travel);
	hs.setAttribute("Food", food);
	hs.setAttribute("Total", total);
%>
<!DOCTYPE html>
<html>
<head>
	<title>DreamCaster ~ Travelicious</title>

	<style type="text/css">
	body{margin: 0; padding: 0;background-color:black;}

		.head{width: 90%;height: 250px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(22.jpg); background-repeat: no-repeat;background-size:cover; /*background-attachment: fixed;*/}

		.nav{background-color:black; color: white; width: 90.1%; height: 50px;position: absolute;top: 275px;left: 69px;}
		.ul1{margin: 0px auto; padding: 10px;}
		.list{float: left; word-spacing: 10px; list-style: none; text-align: center;  padding: 0px 110px; line-height: 30px;}
		.head1{width: 90%;height: 600px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}
		a{text-decoration: none; color:white;}

        .btn{background-color:#81BEF7; font-size:20px; border-radius: 10px; text-decoration-line: none; padding:5px 10px;    }
		
	</style>

</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list"><a href="ViewPlace.jsp">Add Packages</a></li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
	<h2 align="center">Booking Details</h2>
<div align="center">
</div>
<form action="Payment.jsp" method="post">
	<table border="1">
		<tr>
			<th>Place</th>
			<th>Stay</th>
			<th>Food</th>
			<th>Traveling</th>
			<th>Total</th>
		</tr>	
		<tr>
			<td><%=Place%></td>
			<td><%=stay%></td>
			<td><%=food%></td>
			<td><%=travel%></td>
			<td><%=total%></td>
		</tr>
</table>	
<br>
<input type="radio" name="MOP" value="Credit Card" required="required">Credit Card<br>
<input type="radio" name="MOP" value="Debit Card" required="required">Debit Card<br>
<br>
<table>
<tr>
<td>Card No.</td><td><input type="text" name="CCNO" required="required"></td>
</tr>
<tr>
</tr>
<tr>
<td>CVV No.</td><td><input type="text" name="CVV" required="required"></td>
</tr>
<tr>
</tr>
<tr>
<td>Expiration Date</td><td><input type="text" name="EXP" required="required"></td>
</tr>
<tr>
<td><b>Total Charges</b></td>
<td><b><%=total %></b></td>
</tr>
<tr><td align="center"><input type="submit" value="Pay"></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>