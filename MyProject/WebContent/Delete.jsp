<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String BookingID = request.getParameter("id");
int BID = Integer.parseInt(BookingID);
PreparedStatement ps = con.prepareStatement("delete from booking where booking_ID=?");
ps.setInt(1, BID);
int i = ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd = request.getRequestDispatcher("BookingDetails.jsp");
	rd.include(request, response);
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'Booking Cleared ,  'success' );");
	out.println("});");
	out.println("</script>");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("BookingDetails.jsp");
	rd.include(request, response);
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'SOMETHING WENT WRONG'  );");
	out.println("});");
	out.println("</script>");
}
%>