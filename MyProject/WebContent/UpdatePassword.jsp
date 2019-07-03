<!-- Tour And Travel Management  -->

<%@page import="java.sql.*"%>
<%@include file="db.jsp"%>
<%
HttpSession hs  = request.getSession();
String email = (String) hs.getAttribute("FK");
String Pass = request.getParameter("pass");
String Pass1 = request.getParameter("pass1");
if(Pass.equals(Pass1))
{
	PreparedStatement ps = con.prepareStatement("update user set password =?");
	ps.setString(1, Pass);
	int i = ps.executeUpdate();
	if(i>0)
	{
		RequestDispatcher rd = request.getRequestDispatcher("LoginUI.jsp");
		rd.include(request, response);
		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
		out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
		out.println("<script>");
		out.println("$(document).ready(function(){");
		out.println("swal ( 'Password Updated' ,  'successfull !' ,  'success' );");
		out.println("});");
		out.println("</script>");
	}
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("ForgetPasswordUI.jsp");
	rd.include(request, response);
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'Password did not matched' ,  ' !' ,   );");
	out.println("});");
	out.println("</script>");
			
}
%>
