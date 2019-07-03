/*
<!-- Tour And Travel Management  -->
*/

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/ATP")
@MultipartConfig(maxFileSize = 50555550) 
public class AddTourPackages extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Connection con;
		PrintWriter out = response.getWriter();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "1234");
			InputStream inputStream = null;
			Part filePart = request.getPart("photo");
			if (filePart != null) 
			{
				inputStream = filePart.getInputStream();
			}	
			String id = request.getParameter("ID");
			String place=request.getParameter("PLACE");
			String adults=request.getParameter("ADULTS");
			String children=request.getParameter("CHILDREN");
			String desc=request.getParameter("DESCRIPTION");
			String st=request.getParameter("STAY");
			int stay =Integer.parseInt(st);
			String fd=request.getParameter("FOOD");
			int food =Integer.parseInt(fd);	
			String bs=request.getParameter("BUS");
			int bus =Integer.parseInt(bs);
			String trn=request.getParameter("TRAIN");
			int train =Integer.parseInt(trn);
			String als=request.getParameter("AIRLINES");
			int airlines =Integer.parseInt(als);
			int total = stay+food+bus+train+airlines;
			String day=request.getParameter("DAY");
			String night=request.getParameter("NIGHT");
			PreparedStatement ps = con.prepareStatement("insert into packages values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, place);
			ps.setString(3, adults);
			ps.setString(4, children);
			ps.setString(5, desc);
			ps.setInt(6, stay);
			ps.setInt(7, food);
			ps.setInt(8, bus);
			ps.setInt(9, train);
			ps.setInt(10, airlines);
			ps.setString(11, day);
			ps.setString(12, night);
			ps.setInt(13, total);
			if (inputStream != null) 
			{
				ps.setBlob(14, inputStream);
			}
			int x=0;
			x = ps.executeUpdate();
			if(x==1)
			{
				RequestDispatcher rd = request.getRequestDispatcher("AddTourPackages.jsp");
				rd.include(request, response);
				out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( 'Tour Package Added' ,  'successfull !' ,  'success' );");
				out.println("});");
				out.println("</script>");
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}
