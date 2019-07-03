<!-- Tour And Travel Management  -->

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String email = request.getParameter("uname");
String pass = request.getParameter("pwd");
PreparedStatement ps = con.prepareStatement("Select * from user where email=? and password=?");
ps.setString(1, email);
ps.setString(2, pass);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
	int id = rs.getInt(1);
	HttpSession hs = request.getSession();
	hs.setAttribute("BB", id);
	String fname = rs.getString(2);
	RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
	rd.include(request, response);
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'WELCOME' ,  'successfull !' ,  'success' );");
	out.println("});");
	out.println("</script>");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("LoginUI.jsp");
	rd.include(request, response);
	out.println("Invalid Login Credentials");
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'incorrect id or password !' ,  ' ' ,  'error' );");
	out.println("});");
	out.println("</script>");
}
%>