<!-- Tour And Travel Management  -->

<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
HttpSession hs = request.getSession();
String email = request.getParameter("email");
String mno = request.getParameter("cno");
hs.setAttribute("FK", email);
PreparedStatement ps = con.prepareStatement("select * from user where email=? and cno=?"); 
ps.setString(1, email);
ps.setString(2, mno);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
	response.sendRedirect("UpdatePasswordUI.jsp");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("ForgetPasswordUI.jsp");
	rd.include(request, response);
	out.println("Invalid Email or Phone Number");
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'incorrect email or Phone Number !' ,  ' ' ,  'error' );");
	out.println("});");
	out.println("</script>");
}
%>
