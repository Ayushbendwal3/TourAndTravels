/*
<!-- Tour And Travel Management  -->
*/


import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Blob image = null;	
		byte[] imgdata = null;
		String id = request.getParameter("id");

		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "1234");
			PreparedStatement ps = con.prepareStatement("select photo from packages where id =?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				image = rs.getBlob(1);
				imgdata = image.getBytes(1, (int)image.length());
				response.setContentType("image/gif");
				OutputStream o = response.getOutputStream();
				o.write(imgdata);
				o.flush();
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}