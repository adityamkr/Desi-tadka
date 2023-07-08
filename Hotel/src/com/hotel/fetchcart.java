package com.hotel;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class fetchcart
 */
@WebServlet("/fetchcart")
public class fetchcart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uid= (String)request.getAttribute("uid");
		
		
		System.out.println("This is ur uid"+uid);
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		     ArrayList<fetchcartdata> cdata= new ArrayList<>();
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root"); 
		     PreparedStatement ps=con.prepareStatement("select * from cart where uid="+uid);
		     ResultSet rs=ps.executeQuery();
		     
		     while(rs.next())
		     {
		    	 int  ud=rs.getInt(1);
		    	 int pid=rs.getInt(2);
		    	 String pimage=rs.getString(3);
		    	 String pname=rs.getString(4);
		    	 String pprice=rs.getString(5);
		    	 String pquantity=rs.getString(6);
		    	 String ptprice=rs.getString(7);
		    	 String cid=rs.getString(8);
		    	 
		    	 cdata.add(new fetchcartdata(ud,pid,pimage,pname,pprice,pquantity,ptprice,cid));
		     }
		     
		     System.out.println(cdata);
		     request.setAttribute("cdata",cdata);
		     RequestDispatcher ds =request.getRequestDispatcher("cartpage.jsp");
		     ds.forward(request,response);
		     
		     
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		 
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	//	String uid= (String)request.getAttribute("uid");
	//	System.out.println("This is ur uid"+uid);
		 
	}

}
