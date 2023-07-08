package com.hotel;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class signin
 */
@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 try
		  {
			  int success=0;
			  int x=0;
			  
			  Class.forName("com.mysql.cj.jdbc.Driver");
			     
			     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			     
			     String fname=request.getParameter("fname");
			     String lname =request.getParameter("lname");
			     String phoneno = request.getParameter("phoneno");
			     String query="select count(*),uid from users where fname='"+fname+"' and lname='"+lname+"' and phoneno="+"'"+phoneno+"'";
			    System.out.println(query);
			   PreparedStatement ps=con.prepareStatement(query);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			    x=rs.getInt(1);
			   System.out.println("xxx"+x);
			   if(x!=0)
			   {
				   System.out.println("success");
				   success=1;
				   HttpSession s= request.getSession();
				   s.setAttribute("user",fname);
				   s.setAttribute("uid",rs.getInt(2));
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
