package com.hotel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cartpage
 */
@WebServlet("/cartpage")
public class cartpage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		System.out.println("inside get");
		
		
		
	
	}
	
	
	
	
	
	protected void doPost( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("boyyyyyyyyyyyyyyyyyyyyyyy");
		 HttpSession ss =request.getSession();
		
		 
		 
		
		 Integer x=(Integer)ss.getAttribute("uid");
		 String uid=String.valueOf(x);
	//	System.out.println(request.getParameter("pid"));
		  String val=request.getParameter("pid");
		  String pid=String.valueOf(request.getParameter("pid"));
		  
		  try
		  {
			  
			  Class.forName("com.mysql.cj.jdbc.Driver");
			     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			     PreparedStatement ps;
			     ResultSet rs;
			     System.out.println("broskkiiii");
			     
			     
			     System.out.println("my uid"+uid);
			    
			     System.out.println("my pid"+pid);
			     ps=con.prepareStatement("select count(*) from cart where uid='"+uid+"' and pid='"+pid+"'");
			     rs=ps.executeQuery();
			     rs.next();
			     
			     if(rs.getInt(1)==1)
			     {
			    	 String del=(String)request.getParameter("deleteitem");
			    	 System.out.println("this is delete"+del);
			    	if(del==null)
			    	{
			    	 System.out.println("inside update");
			    	//  pid=(String)request.getParameter("pid");
			    	 String pprice=(String)request.getParameter("pprice");
			    	 String pquantity=(String)request.getParameter("pquantity");
			    	 String ptprice=(String)request.getParameter("ptprice");
			    	 String query="update cart set pprice='"+pprice+"',pquantity='"+pquantity+"',"+"ptprice='"+ptprice+"' where pid="+pid+" and uid='"+uid+"'";
			    	 System.out.println(query);
			    	 ps=con.prepareStatement(query);
     		         ps.executeUpdate();
     		         System.out.println("updated successfully");
     		         ps.close();
			    	}
			    	else
			    	{
			    	   System.out.println("in delete block");
			    	   String query="delete from cart where uid='"+uid+"' and pid='"+pid+"'";
			    	   System.out.println(query);
			    	   ps=con.prepareStatement(query);
			    	   ps.executeUpdate();
			    	   ps.close();
			    	
			    	   System.out.println("deleeted success bro");
			    	}

			     }
			     
			     else
			    	 
			     {
			    	

			    	 
			    	  System.out.println("inside insert");
					  pid= request.getParameter("pid");
					 String pimage=request.getParameter("pimage");
					 String pname=request.getParameter("pname");
					 String pprice=request.getParameter("pprice");
					 String pquantity=request.getParameter("pquantity");
					 String ptprice=request.getParameter("ptprice");
					  System.out.println("count"+uid);
					  System.out.println("halla bool");
					  System.out.println(pid+" "+pimage);
					 ps =con.prepareStatement("insert into cart values(?,?,?,?,?,?,?,?)");
				     ps.setString(1,uid);
				     ps.setString(2,pid);
				     ps.setString(3,pimage);
				     ps.setString(4,pname);
				     ps.setString(5,pprice);
				     ps.setString(6,pquantity);
				     ps.setString(7,ptprice);
				     ps.setString(8,"txt"+pid);
				    
				     
				     ps.executeUpdate();
					 
			

			     }
		  }
		  catch(Exception e)
		  {
			System.out.println(e);  
			  
		  }
			     
			     
			     
			     
			     /*
			     
			     if(val==null)
			     {
			    	 System.out.println("wwwww");
			    	 String uid=request.getParameter("uid");
					 String pid= request.getParameter("pid");
					 String pimage=request.getParameter("pimage");
					 String pname=request.getParameter("pname");
					 String pprice=request.getParameter("pprice");
					 String pquantity=request.getParameter("pquantity");
					 String ptprice=request.getParameter("ptprice");
					 ps=con.prepareStatement("select count(*) from cart where uid="+uid+" and pid="+pid);
					 ResultSet rs=ps.executeQuery();
					  rs.next();
					  count=rs.getInt(1);
					  System.out.println("count"+count);
					  if(count!=1)
					  {
						  System.out.println("halla bool");
					 ps =con.prepareStatement("insert into cart values(?,?,?,?,?,?,?,?)");
				     ps.setString(1,uid);
				     ps.setString(2,pid);
				     ps.setString(3,pimage);
				     ps.setString(4,pname);
				     ps.setString(5,pprice);
				     ps.setString(6,pquantity);
				     ps.setString(7,ptprice);
				     ps.setString(8,"txt"+pid);
				    
				     
				     ps.executeUpdate();
					  }
					  else
					  {
						  System.out.println("item already exists");
					  }
			     }
			     
			     else
			     {
			    	 
			          System.out.println("bdcgyduh");
			    	 String pid=(String)request.getParameter("pid");
			    	 String pprice=(String)request.getParameter("pprice");
			    	 String pquantity=(String)request.getParameter("pquantity");
			    	 String ptprice=(String)request.getParameter("ptprice");
			    	 String query="update cart set pprice='"+pprice+"',pquantity='"+pquantity+"',"+"ptprice='"+ptprice+"' where pid="+pid;
			    	 System.out.println(query);
			    	 ps=con.prepareStatement(query);
     		         ps.executeUpdate();
     		         System.out.println("updated successfully");
			     }
		  }
		  
		  catch(Exception e)
		  {
			  System.out.println(e);
		  }
		  
		  */
		  
		  
		 
		  
		  
		 
		
		
		/*
		 String productprice= request.getParameter("productprice");
		 String productqty= request.getParameter("productqty");
		 String txtqty=request.getParameter("txtqty");
		 String finalamt=request.getParameter("finalamt");
		 String proimg=request.getParameter("proimg");
		 String proname=request.getParameter("proname");
		 
		 System.out.println(productprice+" "+productqty+" "+txtqty+" "+finalamt+" "+proimg+" "+proname);
		 
		 llist.add(proimg);
		 llist.add(proname);
		 llist.add(productprice);
		 llist.add(txtqty);
		// llist.add(productqty);
		 llist.add(finalamt);
		
		 
		 ss.setAttribute(proname,llist);
		 */
		 
		
		 
		 
		
	}

}
