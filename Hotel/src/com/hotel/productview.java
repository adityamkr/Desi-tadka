package com.hotel;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class productview
 */
@WebServlet("/productview")
public class productview extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   System.out.println("asdffgjbfdnejfbrf");
		   
		   
		   System.out.println(request.getParameter("id"));
		   System.out.println(request.getParameter("sname"));
		  //  String sname=(String)request.getParameter("sname");
			
		   			try
			      {
		   				
		   				Connection con=null;
		   				PreparedStatement ps;
		   				ResultSet rs;
		   				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root"); 
		   				
		   				
				 if(request.getParameter("sname")==null)
				 {
					 
				   System.out.println("sfcddtghcjldsjgcfdj");
				 String dname=(String)request.getParameter("dname");
				 int id=Integer.parseInt(request.getParameter("id"));
				Class.forName("com.mysql.cj.jdbc.Driver");
			     
			     
			     
			    
			      ps=con.prepareStatement("select * from "+dname+" where pno="+id);
			      
			      rs=ps.executeQuery();
			      
			      if(rs.next())
			      {
			    	  
			    	      String pname=rs.getString(2);
			    		 String pimage=rs.getString(3);
			    		 int pprice=rs.getInt(4);
			    		 String pquantity=rs.getString(5);
			    		 request.setAttribute("pname",pname);
					      request.setAttribute("pimage",pimage);
					      request.setAttribute("pprice",pprice);
					      request.setAttribute("pquantity",pquantity);
					      request.setAttribute("pid",id);
					      
					      RequestDispatcher rd =request.getRequestDispatcher("productview.jsp");
					      rd.forward(request,response);
			      }
				 }
				 else
				 {
					 
				
					 System.out.println("inside else stat");
					 System.out.println(request.getParameter("id"));
					 String x=request.getParameter("id");
					 ps=con.prepareStatement("select * from spices where pid='"+x+"'");
					 rs=ps.executeQuery();
					 rs.next();
					  String pname=rs.getString(3);
					  String pimage=rs.getString(4);
					  String pprice=rs.getString(5);
					  String pquantity=rs.getString(6);
					  System.out.println(pname+" "+pimage+" "+pprice+" "+pquantity);
					  request.setAttribute("pname",pname);
					  request.setAttribute("pimage",pimage);
					  request.setAttribute("pprice",pprice);
					  request.setAttribute("pquantity",pquantity);
					  request.setAttribute("pid",x);
					  System.out.println("set the attribute correctly");
					  RequestDispatcher op = request.getRequestDispatcher("productview.jsp");
					  op.forward(request,response);
					  
					 //write sql queries and create new cart page
					 
				 }
				 
				 
			     
			      
			       
			      
			       
			     
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
		
	}

}
