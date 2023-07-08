package com.hotel;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class dishes
 */
@WebServlet("/dishes")
public class dishes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	 
	
	 	 PreparedStatement ps;
	 ResultSet rs;
	 RequestDispatcher rd;
	 
	  try
	  {
		  ArrayList<getdishesdata>gdd= new ArrayList<>();
		  Class.forName("com.mysql.cj.jdbc.Driver");
		     
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root"); 
		     
		         System.out.println("oh yeeeehj");
		         if(request.getParameter("dish")!= null)
		         {
		        	 String x=(String)request.getParameter("dish");
		        	 System.out.println(x);

		    	 ps = con.prepareStatement("select * from "+x);
		    	 
		    	 System.out.println("jbdcfl");
		    	 rs=ps.executeQuery();
		    	 
		    	 while(rs.next())
		    	 {
		    		 int pno=rs.getInt(1);
		    		 String pname=rs.getString(2);
		    		 String pimage=rs.getString(3);
		    		 int pprice=rs.getInt(4);
		    		 String pquantity=rs.getString(5);
		    		 
		    		 gdd.add(new getdishesdata(pno,pname,pimage,pprice,pquantity));
		    		 
		    		 
		    	 }
		    	 request.setAttribute("dish",gdd);
		    	 request.setAttribute("dname",x);
		    	 System.out.println("forwaded");
		    	 rd = request.getRequestDispatcher("dishes.jsp");
		    	
		    	 rd.forward(request, response);
		         }
		    	
		         else
		         {
		        	 ArrayList<getspicesdata>gsd= new ArrayList<getspicesdata>();
		        	 System.out.println("inside spice field");
		        	 System.out.println(request.getParameter("id"));
		        	 String x=request.getParameter("id");
		        	 ps=con.prepareStatement("select * from spices where pid='"+x+"'");
		        	 rs=ps.executeQuery();
		        	 while(rs.next())
		        	 {
		        		 String pid=rs.getString(1);
			        	 String mtype=rs.getString(2);
			        	 String name=rs.getString(3);
			        	 String image=rs.getString(4);
			        	 String price=rs.getString(5);
			        	 gsd.add(new getspicesdata(pid,mtype,name,image,price));
		        	 }
		        	 
		        	 request.setAttribute("gsd",gsd);
		        	rd=request.getRequestDispatcher("dishes.jsp?"+"id="+x+"&"+"sname="+"malwani");
		        	rd.forward(request, response);
		             
		         }

		     
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
	  }
	 }
	 
}
