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
 * Servlet implementation class maxy
 */
@WebServlet("/index")
public class maxy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    		System.out.println("dragonn");
    		 PreparedStatement ps;
    		 ArrayList<kd>list = new ArrayList<>();
    		  ArrayList<specialdish> sd = new ArrayList<specialdish>();
    		  ArrayList<getspicesdata>sp1 = new ArrayList<getspicesdata>();
    		   String name,image,desc,mtype;
    		   int id;
			  try
			   {
				  System.out.println("insideeeeee");
				 
		      Class.forName("com.mysql.cj.jdbc.Driver");
		     
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		      
		       ps = con.prepareStatement("select * from popular_meal");
		        ResultSet rs=ps.executeQuery();
		        while(rs.next())
		        {
		           id=rs.getInt(1);
		           name=rs.getString(2);
		           image=rs.getString(3);
		       
		        	list.add(new kd(id,name,image));
		      
			   }
		        
		        //getting the special dish data
		      
		         ps=con.prepareStatement("select name,description from special_dish");
		         rs=ps.executeQuery();
		         while(rs.next())
		         {
		        	name=rs.getString(1);
		        	desc=rs.getString(2);
		        	
		        	sd.add(new specialdish(name,desc));
		         }
		         
		         //getting the spices data
		         
		         ps=con.prepareStatement("select pid,mtype,name,image,price from spices where mtype='malwani_masala'");
		         
		         rs=ps.executeQuery();
		         String price,i;
		         while(rs.next())
		         {
		        	 i=rs.getString(1);
		        	 mtype=rs.getString(2);
		        	 name=rs.getString(3);
		        	 image=rs.getString(4);
		        	 price=rs.getString(5);
		        	 System.out.println(i+" "+mtype+" "+name+" ");
		        	 sp1.add(new getspicesdata(i,mtype,name,image,price));
		         }
		         
		         
		        
			   }
		        
			   catch(Exception e)
			   {
				  System.out.println(e);
			   }
			 
		  
    		
    		// list.add(new kd(1,"aditya"));
    		// list.add(new kd(2,"kedar"));
    		 //list.add(new kd(3,"abhinav"));
    		 
    		 //System.out.println(list);
//    		HttpSession ss = request.getSession();
    		request.setAttribute("list", list);
    		request.setAttribute("sd",sd);
    		request.setAttribute("sp1",sp1);
		     RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		     rd.forward(request, response);
    		
    		//response.sendRedirect("index.jsp");
	}

}
