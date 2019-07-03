<!-- Tour And Travel Management  -->

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<% 
	HttpSession hs = request.getSession();
	int id_user = (int) hs.getAttribute("BB");
	int Booking_id = id_user+1;
	hs.setAttribute("CC", Booking_id);
	
	String Place = (String)hs.getAttribute("Place");
	int Stay = (int) hs.getAttribute("Stay");
	String date = (String)hs.getAttribute("Date");
	int Travel = (int) hs.getAttribute("Travel");
	int Food = (int) hs.getAttribute("Food");
	int Total = (int) hs.getAttribute("Total");
	 
	
	String mop = request.getParameter("MOP");
	PreparedStatement ps = con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, Place);
	ps.setString(2, date);
	ps.setString(3, "yes");
	ps.setInt(4, id_user);
	ps.setInt(5, Stay);
	ps.setInt(6, Food);
	ps.setInt(7, Travel);
	ps.setInt(8, Total);
	ps.setString(9, mop);
	ps.setInt(10, Booking_id);
	int i = ps.executeUpdate();
	if(i>0)
	{
		RequestDispatcher rd = request.getRequestDispatcher("Receipt.jsp");
		rd.include(request, response);
		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
		out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
		out.println("<script>");
		out.println("$(document).ready(function(){");
		out.println("swal ( 'Booking Done' ,  'Payment successfull !' ,  'success' );");
		out.println("});");
		out.println("</script>");	
	}

%>
<!DOCTYPE html>
<html>
<head>
	<title>DreamCaster ~ Travelicious</title>
</head>
</body>
</html>