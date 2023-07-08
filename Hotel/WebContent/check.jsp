<%@page import="com.hotel.getdata"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@page import="com.hotel.kd"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <h1>Hello</h1>
     <%
      if(request.getAttribute("list")==null)
      {
    	  response.sendRedirect("maxy");
      }
       System.out.println("yeahbou00");
       ArrayList<Integer>list=(ArrayList<Integer>)request.getAttribute("list");
       
        if(list==null)
        {
        	System.out.println("It is null");
        }
        else
        {
        	System.out.println("not nul");
        	
        	for(int i=0;i<list.size();i++)
        	{
        		System.out.println(list.get(i));
        	}
        	
        }
     
     
        %>
            
     
     <%
       kd d = new kd(); 
     %>
    
    
   
     
</body>
</html>