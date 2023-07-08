<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.hotel.getdishesdata" %>
 <%@ page import="com.hotel.getspicesdata" %>
 <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://fonts.googleapis.com/css2?family=Lora&family=McLaren&family=Nunito+Sans:wght@600&family=Pacifico&family=Poppins:wght@500&family=Roboto:wght@300;400&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<style>
.pd
{
        text-align: center;
    font-family: roboto;
    word-spacing: 3px;
    margin-bottom: 16px;
}

.outerdivpje
{
 display:flex;
 border:2px;
 flex-wrap:wrap;
 margin-left:3px;

}

.innerdivpje
{
       width: 235px;
    height: 272px;
    margin-left:22px;
    padding: 5px;
    border: 2px solid;
    margin-top: 10px;
    margin-bottom: 24px;
    
}
.imgpj
{
    width: 227px;
    height: 112px;
    border: 2px solid;
}
.actualimg
{
    width:227px;
    height:112px;

}
.pronaming
{
    text-align: center;
    font-size: 20px;
    font-family: 'Poppins';
}
.productprice
{
    font-size: 22px;
    position: relative;
    left: 71px;
    font-weight: bold;
    font-family: 'Roboto';
}
.ordnowe
{
    width: 115px;
    height: 30px;
    text-align: center;
    top: 47px;
    color: white;
    right: 33px;
    border-radius: 20px;
    padding: 5px;
    background: crimson;
    position: relative;
}

</style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    
    
      <h1 class="pd">Punjabi Dishes</h1>
       <div class="outerdivpje">
     
      <%
        String x="";
       String dname=(String)request.getAttribute("dname");
      System.out.println("dname is"+dname);
         
      
   
         ArrayList<getdishesdata>dish=(ArrayList<getdishesdata>)request.getAttribute("dish");
         ArrayList<getspicesdata>spice=(ArrayList<getspicesdata>)request.getAttribute("gsd");
      
         String ddname="";
         
         if(spice==null)
         {
         for(getdishesdata i:dish)
         {
         
         x="1";
        %>
           
        <div class="innerdivpje">
           <div class="imgpj">
            <img  class="actualimg" src="<%=i.getpimage()%>">
           </div>
           <p class="pronaming"><%=i.getpname() %></p>
           <span class="productprice">Rs <%=i.getpprice() %>/-</span>
            <button id=<%=i.getpno() %> class="ordnowe" onclick="callfuncy(this.id,<%=i.getpprice()%>)">Order now</button>
        </div>
         
        
        
        <%
        
         }
         }
         
         else{
        	 System.out.println("yeah boy");
           RequestDispatcher rs =request.getRequestDispatcher("productview");
  
           rs.forward(request,response);
         }
//         System.out.println("holllla");
      
      %>
      </div>
      
    <script>
     
    
       function callfuncy(id,price,pquantity)
       { 
    	   
    	  
    	  
    	 console.log("hello",pquantity);
			
    	   
    	 let abc='<%=dname%>';
    	   //   console.log(ddname);
    	     
    	  //  System.out.println("i am called");
    	 
    	      
    //  request.setAttribute("id","3");
    	 //    RequestDispatcher rd = request.getRequestDispatcher("productview.jsp");
    	  //  rd.forward(request,response);
    	   // session.setAttribute("id",id);
    	  //  session.setAttribute("dname",dname);
    	  //  session.setAttribute("pquantity",pquantity);

    	      
    	    
    	  // console.log("hey"+x);
    	 let x='<%=x%>';
         console.log(typeof(x));
         window.location.href="productview?"+"dname="+abc+"&id="+id;
       }
       
    
    </script>
       
</body>
</html>