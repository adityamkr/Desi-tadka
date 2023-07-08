<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*" %>
 <%@ page import="com.hotel.fetchcartdata" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

  body {
    max-width: 100%;
    overflow-x: hidden;

}
 .outercart
 {
    
        border: 2px solid;
    width: 1501px;
    height: 178px;
    
 }

 .innercart
 {
        width: 1434px;
    margin-left: 18px;
    height: 159px;
    border: 2px;
    margin-bottom: 0px;
 }

 .boxy
 {
    width: 126px;
    height: 149px;
    margin-left: 20px;
    margin-top: 17px;
    border: 2px solid red;
 }

 .imgbox
 {
    width:126px;
    height:149px;
    background-size:cover;
    background-repeat:no-repeat;
 }

 .productinfo
 {
    display: flex;
    height: 39px;
    border: 2px;
    margin-bottom: 10px;
 }

 .pnname
 {
        display: inline-block;
    position: relative;
    left: 313px;
    margin-top: 10px;
    font-size: 20px;
 }
 .pprice
 {
       position: relative;
    left: 501px;
    margin-top: 10px;
    font-size: 20px;
 }
 .pqquantity
 {
        position: relative;
    left: 700px;
    margin-top: 10px;
    font-size: 20px;
 }

 .pttotal
 {
        position: relative;
    left: 926px;
    margin-top: 10px;
    font-size: 20px;
 }

 .acpnname
 {
       position: relative;
    left: 273px;
    font-size: 20px;
    bottom: 89px;
 }
 .acpprice
 {
        position: relative;
    left: 437px;
    font-size: 20px;
    bottom: 93px;
 }

 .incbtn
 {
         width: 36px;
    font-size: 18px;
    height: 27px;
    position: relative;
    left: 587px;
    bottom: 96px;
 }
 .txtdiv
 {
          width: 28px;
    height: 22px;
    text-align: center;
    position: relative;
    bottom: 99px;
    left: 607px;
    border: 2px solid;
    display: inline-block;

 }

 .decbtn
 {
          width: 32px;
    font-size: 18px;
    height: 26px;
    position: relative;
    left: 629px;
    bottom: 97px;
 }
 .finalamt
 {
        position: relative;
    left: 778px;
    bottom: 98px;
    font-size: 20px;
    /* border: 2px solid; */
 }
     
   .cartimg
    {
         margin-left: 379px;
    margin-top: 46px;
    }
   .delbn
   {
          position: relative;
    left: 652px;
    bottom: 99px;
    width: 32px;
    height: 26px;
   
   }
   .ta
   {
           font-size: 20px;
    text-align: center;
   }
   
   .pc
   {
         width: 120px;
    border: 2px solid;
    position: relative;
    left: 9px;
    top: 5px;
    height: 30px;
    margin-left: 637px;
    background: #5cdf5c;
    cursor:pointer;
   }
   
   .pay
   {
       width: 50px;
    height: 25px;
    border-radius: 5px;
    padding: 3px;
    border: 2px solid;
    position: relative;
    right: -832px;
    bottom: 98px;
    background: #69ea69;
    cursor:pointer;
   }
   
   
   
</style>
<title>Insert title here</title>
</head>
<body>
  
    <jsp:include page="navbar.jsp" />
    <c:set var="i" value="3"></c:set>
    
   
   <%
   int count=0;
    System.out.println("hey bro");
   ArrayList<fetchcartdata>list=(ArrayList<fetchcartdata>)request.getAttribute("cdata");
   System.out.println(list);
   
   if(list==null)
   {
	   System.out.println("list isss null");
   }
   else
   {
	  System.out.println("list issss nto nulll");
   }
   %>
   
   
  
     
       <%
       
         if(list!=null && list.size()>0)
         {
        System.out.println("boys"+list.size());
       %>
        <div class="productinfo">
      <span class="pnname">Product name</span>
      <span class="pprice">Price</span>
      <span class="pqquantity">Quantity</span>
      <span class="pttotal">Total</span>
     </div>
      <%
        }
         else
         {
        %>
          <div>
            <img class="cartimg" src="https://cdni.iconscout.com/illustration/premium/thumb/empty-cart-5521508-4610092.png"/>
          	</div>
        <%
           
         }
        
      %>
     
    <%
    
       if(list==null)
       {
    	   System.out.println("hooooooooooooooooooooooooooooooooooooomie");
    	   RequestDispatcher rs = request.getRequestDispatcher("fetchcart");
    	   String x=String.valueOf(session.getAttribute("uid"));
    	   System.out.println("This is ur uid"+x);
    	    request.setAttribute("uid",x);
    	    rs.forward(request,response);
    	   
    	   
       }
    
       else
       {
    	   
    	 //  ArrayList<fetchcartdata>list=(ArrayList<fetchcartdata>)request.getAttribute("cdata");
     //  ArrayList<fetchcartdata>list=(ArrayList<fetchcartdata>)request.getAttribute("cdata");
       
    
     for(fetchcartdata i:list)
    {
       
    	// System.out.println(i.getptprice());
    	 String x=i.getptprice();
         
    	 count=count+Integer.parseInt(x.substring(3));
    	 
     
    %>
    
       
       <form action="cartpage" method="get">
         <div class="outercart">
    
     <div class="innercart" id=<%=i.getinnercartid() %>>
      <div class="boxy">
        <img  class="imgbox" src='<%=i.getpimage() %>'>
      </div>
       
       <span class="acpnname"><%=i.getpname() %></span>
       
        <span  id=<%=i.getdpprice()%> class="acpprice">Rs <%=i.getpprice() %> /-</span>
              
        <input type="button" id=<%=i.getpid()%> value="+" class="incbtn" onclick="add(this.id)">
          
         
         <div class="txtdiv" id=<%=i.getcid()%>><%=i.getpquantity() %></div>
     
         <input type="button" id=<%=i.getmpprice() %> value="-" class="decbtn" onclick="sub(this.id)">
         <input type="button" id=<%=i.getdelp()%>   class="delbn"  value="D" onclick="del(this.id)">
         <span class="finalamt"id=<%=i.getdptprice() %>><%=i.getptprice() %>/-</span>
         
         <input type="button" value="PAY" class="pay">
     </div>


    
    </div>
    </form>
    
          <%
    }
      
       
       %>
       
      <%
      if(list.size()>0)
      {
      
      %>
        <p id="ca"  class="ta">Cart Total = Rs <%=count %></p>
        <input type="button" value="Purchase Cart" class="pc">
       <%
      }
       }
       %>
       
       
       
        	 
        
      
    
 <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
   
    <script>
   // alert("hello");
  
     function add(clickedbtn)
     {
    
    	console.log("you clicked"+clickedbtn);
    	
    var su=Number(document.getElementById("txt"+clickedbtn).innerHTML);
    su=su+1;
    document.getElementById("txt"+clickedbtn).innerHTML=su;
   
   let price=document.getElementById("p"+clickedbtn).innerHTML;
  
    price=price.split(" ");
    console.log(price);
    price=Number(price[1]);
    let x=price+"";
    let p=price;
    price=price*su;
    let ppt=price;
    document.getElementById("d"+clickedbtn).innerHTML="Rs "+price+" /-";
    
   
    
    
     $(document).ready(function()
    		 {
    	 	    $.post("cartpage",{pid:clickedbtn,val:su,pprice:x,pquantity:su,ptprice:"Rs "+ppt},function(data)
    	 	    		{
    	 	    	
    	 	    	     console.log(data);
    	 	    		});
    		 });
     
     //for cart total amount
     x=p;
     price=document.getElementById("ca").innerHTML;
     price=price.split(" ");
     console.log(price[price.length-1])
     price=Number(price[price.length-1]);
     price=x+price;
     
     document.getElementById("ca").innerHTML="Cart Total = Rs "+price; 
    
     }
     
     function sub(clickedbtn)
     {
    	console.log("clicker",clickedbtn);
   
     clickedbtn=clickedbtn.substring(1);
     console.log(clickedbtn);
     let sub=Number(document.getElementById("txt"+clickedbtn).innerHTML);
     console.log(sub);
    if(sub>=2)
    {
     sub=sub-1;
     console.log(sub);
     document.getElementById("txt"+clickedbtn).innerHTML=sub;
     let price=document.getElementById("p"+clickedbtn).innerHTML;
     price=price.split(" ");
     price=Number(price[1]);
     let x=price+"";
     let p=price;
     price=price*sub;
     document.getElementById("d"+clickedbtn).innerHTML="Rs "+price+" /-";

     $(document).ready(function()
    		 {
    	 	    $.post("cartpage",{pid:clickedbtn,pprice:x,pquantity:sub,ptprice:"Rs "+price},function(data)
    	 	    		{
    	 	    	
    	 	    	     console.log(data);
    	 	    		});
    		 });
     
     //for cart total amount
     x=p;
     price=document.getElementById("ca").innerHTML;
     price=price.split(" ");
     console.log(price[price.length-1])
     price=Number(price[price.length-1]);
     price=price-x;
     
     document.getElementById("ca").innerHTML="Cart Total = Rs "+price; 
    
     
     
    }

    	 
     }
     
     function del(clicked)
     {
    	console.log("delete btn id",":",clicked);
       
    	clicked=clicked.substring(3);
    	let p="i"+clicked;
    	
    	
    	console.log("clicked is"+clicked);
    	document.getElementById(p).remove();
   
    	$(document).ready(function()
    			
       		 {
       	 	    $.post("cartpage",{pid:clicked,deleteitem:"true"},function(data)
       	 	    		{
       	 	    	      
       	 	    	    
       	 	    	     //console.log(data);
       	 	    		});
       		 });
    	window.location.href="cartpage.jsp";
    	 
     }
     
     
    </script>
    
    
    
  
    