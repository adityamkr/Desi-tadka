package com.hotel;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  try
	  {
		  int success=0;
		  Class.forName("com.mysql.cj.jdbc.Driver");
		     
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		     
		     String fname=request.getParameter("fname");
		     String lname =request.getParameter("lname");
		     int age =Integer.parseInt(request.getParameter("age"));
		     String email= request.getParameter("email");
		     String phoneno = request.getParameter("phoneno");
		     
		   System.out.println(fname+" "+lname+" "+age+" "+email+" "+phoneno);
		   PreparedStatement ps = con.prepareStatement("insert into users values(default,?,?,?,?,?)");
		   ps.setString(1,fname);
		   ps.setString(2,lname);
		   ps.setInt(3,age);
		   ps.setString(4,email);
		   ps.setString(5,phoneno);
		  
		   success = ps.executeUpdate();
		   
		     if(success!=0)
		     {
		    	System.out.println("Inserted successfully");
		    	response.sendRedirect("index.jsp");
		     }
		     else
		     {
		    	 response.sendRedirect("Signup.jsp");
		     }
		    
		      
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
		  response.sendRedirect("Signup.jsp");
	  }

}
}
