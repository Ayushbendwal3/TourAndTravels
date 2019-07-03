<!-- Tour And Travel Management  -->

<%@include file="db.jsp" %>
<%@page import="java.sql.*" %>
<% 
HttpSession hs = request.getSession();
int id_user = (int)hs.getAttribute("BB");
String  id = request.getParameter("id");
PreparedStatement ps = con.prepareStatement("Select * from packages where id=?");
ps.setString(1, id);
ResultSet rs = ps.executeQuery();
rs.next();
String Name = rs.getString(2);
String Adult = rs.getString(3);
String Children = rs.getString(4);
String Description = rs.getString(5);
int stay = rs.getInt(6);
int food = rs.getInt(7);
int bus = rs.getInt(8);
int train = rs.getInt(9);
int airlines = rs.getInt(10);
String Day = rs.getString(11);
String Night = rs.getString(12);
int total = rs.getInt(13);
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
		.head1{width: 90%;height: 800px ; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}



        .btn{background-color:#81BEF7; font-size:20px; border-radius: 10px; text-decoration-line: none; padding:5px 10px;    }



		
	</style>

</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list"><a href="Home.jsp">HOME</a></li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
		<h2 align="center">Place Details</h2>
	<br>
<form action="PaymentUI.jsp?Name=<%=Name %>" method="post">
<table border="1" >
  <tr>
    <td rowspan="9"><img width="250px" height="200px" src="ImageServlet?id=<%=rs.getString("id")%>" /></td>
    <td colspan="2">Name : <%=Name %></td>
  </tr>
  <tr>
    <td colspan="2">Description : <%=Description %></td>
  </tr>
  <tr>
    <td colspan="2"><%=Day %> Days <%=Night %> Nights</td>
  </tr>
  <tr>
    <td colspan="2">Number of Adult :  <%=Adult %> Number of Children :  <%=Children %></td>
  </tr>
  <tr>
    <td colspan="2"><input type="radio" name ="stay" value=<%=stay %> checked="checked" required="required" disabled="disabled">Stay Rs : <%=stay %></td>
  </tr>
  <tr>
    <td colspan="2">Food: <br><input type="radio" name="food" value=<%=food %> checked="checked"> Yes <input type="radio" value=0 name="food"> No </td>
  </tr>
  <tr>
    <td colspan="2"><input type="checkbox" checked="checked" required="required" disabled="disabled">Travelling <br> 
    <input type="radio" name="travel" value=<%=bus %> required="required">Bus
    <input type="radio" name="travel" value=<%=train %> required="required">Train
    <input type="radio" name="travel" value=<%=airlines %> required="required">flight
    </td> 
  </tr>

  <tr>
    <td colspan="2">Date: <input type="date" name="DOT" required="required"></td>
  </tr>
  <tr>
    <td align="right"><b>Total</b>	</td>
    <td><%=total %></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><input type="submit" value="confirm Booking"></td>
  </tr>
</table>
</form>
</div>
</div>
</body>
</html>




