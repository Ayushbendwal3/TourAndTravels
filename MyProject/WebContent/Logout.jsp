<!-- Tour And Travel Management  -->

<%
	HttpSession hs = request.getSession();
	hs.getAttribute("AA");
	hs.invalidate();
	RequestDispatcher rd = request.getRequestDispatcher("LoginUI.jsp");
	rd.include(request, response);
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal ( 'Logged out' ,  'successfully !' ,  'success' );");
	out.println("});");
	out.println("</script>");
%>