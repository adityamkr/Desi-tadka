package com.hotel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import  java.util.ArrayList;
/**
 * Servlet implementation class popularmeal
 */
@WebServlet("/popularmeal")
public class popularmeal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			 HttpSession ss= request.getSession();
			 
			  getdata d1 = new getdata("aditya");
			   System.out.println(d1.getgetdata());
			  ss.setAttribute("na", "king");
			  
			  response.sendRedirect("check.jsp");
			  
		} catch (Exception e) {
			// TODO Auto-generated catch blseock
			e.printStackTrace();
		}  

		
	}

	
	

}
