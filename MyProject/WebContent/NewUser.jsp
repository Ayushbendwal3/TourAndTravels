<!-- Tour And Travel Management  -->

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>

<%
PreparedStatement ps = con.prepareStatement("select * from user");
ResultSet rs = ps.executeQuery();
rs.last();
int id = rs.getInt(1);
id++;
String Fname=request.getParameter("fname");
String Lname=request.getParameter("lname");
String cno = request.getParameter("Cno");
String Uname= request.getParameter("uname");
String Pass=request.getParameter("pwd");
ps = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
ps.setInt(1, id);
ps.setString(2, Fname);
ps.setString(3, Lname);
ps.setString(4, Uname);
ps.setString(5, Pass);
ps.setString(6, cno);
int x=0;
x = ps.executeUpdate();
if(x==1)
{
	HttpSession hs = request.getSession();
	hs.setAttribute("AA", Uname);
	hs.setMaxInactiveInterval(300);
	RequestDispatcher rd = request.getRequestDispatcher("LoginUI.jsp");
	rd.include(request, response);
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'Registration' ,  'successfull !' ,  'success' );");
	out.println("});");
	out.println("</script>");
} 
else
{
	RequestDispatcher rd = request.getRequestDispatcher("NewUserUI.jsp");
	rd.include(request, response);
	out.println("Invalid Login Credentials");
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'Try Again :(' ,  ' ' ,  'error' );");
	out.println("});");
	out.println("</script>");
}
%>