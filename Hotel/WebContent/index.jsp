<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.hotel.kd" %>
<%@page import="com.hotel.specialdish" %>
<%@page import="com.hotel.getspicesdata" %>

<%@ page import="java.util.*" %>



  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Lora&family=McLaren&family=Nunito+Sans:wght@600&family=Pacifico&family=Poppins:wght@500&family=Roboto:wght@300;400&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>

 body{
 /*
    background-color:whitesmoke;
    max-width:100%;
    */
        overflow-x: hidden;
 }
.navdiv
{
    display:flex;
    display:inline-block;
    border:2px solid;
    width:1522px;
    height:100px;
    background-color:black;
}
.uul
{
position: relative;
    height: 24px;
    left: 655px;
    bottom: 33px;
    font-size: 25px;
    border: 2px;
    /* justify-content: space-evenly; */
    display: inline-block;
    padding-left: 0px;
  
}
.dtimg
{
    width: 103px;
    height: 99px;
    position: relative;
    left: 20px;
    top: 0px;
    border-radius: 65px;
}
.myli
{
    display: inline-block;
    padding-right: 43px;
    text-decoration: none;
    cursor: pointer;

}
a
{
    color:white;
  text-decoration: none;
  cursor: pointer;
}
a:hover
{
    color:red;
}
.et
{
        text-align: center;
    position: relative;
    right: -16px;
    top: 10px;
    margin-top: 30px;
    margin-bottom: 72px;
    font-family: 'Roboto';
}
.photo
{
    width: 1524px;
    height: 472px;
}
.tdmeal
{
      width: 362px;
    height: 335px;
    border: 2px solid white;
    margin-left: 39px;
    border: 2px solid;
    padding: 20px;
    margin-right: 29px;
    }
.tdmealimg
{
    width: 352px;
    height: 154px;
    border: 2px;
}
.tdimgphoto
{
        width: 340px;
    /* height: 152px; */
    /* height: 30px; */
    height: 153px;
    background-size: cover;
}

.p1
{
    text-align: center;
    font-family: 'Roboto';
    font-size: 20px;
    font-weight: bolder;
    color:white;
}

.grab
{
      width: 150px;
    height: 35px;
    position: relative;
    font-size: 20px;
    border: 2px;
    text-align: center;
    left: 112px;
    top: 87px;
    color: back;
    background: #5269ed;
    cursor: pointer;
    border-radius: 30px;
}

.flexy
{
       display: flex;
    border: 2px solid;
    width: 1456px;
    background-color: black;
    margin-bottom: 55px;
    /* justify-content: space-between; */
}
.fire
{
    width:100px;
    height:40px;
}
.cardy
{
    width: 329px;
    height: 262px;
    padding: 20px;
    border: 2px;
    margin-left: 54px;

}
.ltimage
{
    width: 320px;
    height: 255px;
}
.lthb
{
    bottom: 340px;
    display: inline-block;
    margin-left: 0px;
    position: relative;
    left: 737px;
    text-align: center;
    color: white;
}
.tadkasspecial
{
      width: 1503px;
    height: 310px;
    padding: 10px;
    border: 2px solid;
    background: #284d5d;
    margin-bottom: 78px;
}
.sentence
{
    width: 735px;
    width: -323px;
    display: inline-block;
    position: relative;
    left: 200px;
    font-size: 20px;
    font-family: poppins;
    line-height: 2;
    bottom: 242px;
    color: white;
    /* font-size: 23px; */
    /* max-width: 141px; */
}
.gtnow
{
    width: 131px;
    height: 41px;
    border: 2px solid;
    position: relative;
    right: 254px;
    background: palevioletred;
    bottom: 128px;
    border-radius: 20px;
    cursor:pointer;
}

.flavoured
{
   
     display: flex;
    border: 2px solid;
    background-color: black;
    margin-bottom: 47px;
  
    }
.f1
{
       width: 310px;
    height: 299px;
    border: 2px;
    padding: 20px;
    margin-left: 108px;
}
.f1notimg
{
    width: 295px;
    height: 177px;
    border: 2px solid;
}	
.f1img
{
    width: 295px;
    height: 177px;
}
.headm1
{
        margin-left: 20px;
    font-family: "poppins";
    text-align: center;
    margin-bottom: 36px;
}
.name1
{
    text-align: center;
    font-size: 23px;
    margin-top: 15px;
    font-family: 'Roboto';
    font-weight: 800;
    color:white;
}

.ordernow
{
    position: relative;
    left: 97px;
    width: 117px;
    top: 8px;
    background: #e91e63;
    height: 33px;
    border-radius: 20px;
    color:white;
    cursor:pointer;
}
</style>
</head>
<body>
    
    
    <jsp:include page="navbar.jsp" />
   
   <h1 class="et">Get the Most Exotic Taste on Desi Tadka</h1>
   <img  class="photo" src="https://www.cypressgreen.in/blog/wp-content/uploads/2021/03/food.jpg">
    <h1 class="et">Today's  Popular Meal of the Day</h1>
    <div class="flexy">
      
          <%
         
          if(request.getAttribute("list")==null)
          {
        	  System.out.println(request.getAttribute("list"));
        	  response.sendRedirect("index");
        	  System.out.println("welcome");
        	 
          }
          
         
          
          ArrayList<kd>list=(ArrayList<kd>)request.getAttribute("list");
          ArrayList<specialdish>sd=(ArrayList<specialdish>)request.getAttribute("sd");
          ArrayList<getspicesdata>mspice=(ArrayList<getspicesdata>)request.getAttribute("sp1");
          
          if(!(list==null && sd== null && mspice==null ))
          {
        	
              
          System.out.println("The size of special dish is "+sd.size());
     
           
           for(kd k:list)
           {
        	 // System.out.println(list.get(i));4
        	 System.out.println("for ke andar");
        	   System.out.println(k.getid());
        	 
        %>
        
        	     <div class="tdmeal">
            <div class="tdmealimg">
            <img class="tdimgphoto" src="<%=k.getimage()%>">/>
            </div>
             <p class="p1"><%=k.getname()%></p>
             <button  id=<%=k.getid()%> class="grab" onclick="Btnclick(this.id)">Grab now</button>
           </div>
        	   
        	   <% 
           }
         
          
          %>
          

          

    </div>

       <h1 class="et">Desi Tadka's Special Dish</h1>
        <%
        
         for(specialdish s:sd)
         {
         %>
                 <div class="tadkasspecial">
            <div class="cardy">
             <img  class="ltimage" src="https://www.sheknows.com/wp-content/uploads/2018/08/ti8wzfbbvdspxo8dg1ci.jpeg">
            </div>
             
              <h2 class="lthb">"<%=s.getname()%>"</h2>
           <p class="sentence"><%=s.getdesc() %></p>
           <button class="gtnow" id="sd" onclick="Btnclick(this.id)">Get now</button>
          
             </div>
         
         <%
         }
          
        
       %>
    
         <h1 class="et">Flavoured By Spices</h1>
         <h2 class="headm1">"Malwani Masala"</h2>
            <div class="flavoured">
         <%
         
          for(getspicesdata mp:mspice)
          {
        	  
        	 System.out.println(mp.getname());
        	  %> 
        	   
            <div class="f1">
              <div class="f1notimg">
                <img class="f1img" src="<%=mp.getimage()%>">
              </div>
               <p class="name1"><%=mp.getname()%></p>
               <button id=<%=mp.getpid()%>  class="ordernow" onclick="Btnclick(this.id)" >Order now</button>
            </div>
        	 <%
          }
          }
        	 %>          
         </div>

         <h2 class="headm1">"Kolhapuri Masala"</h2>
         <div class="flavoured">
            
            <div class="f1">
              <div class="f1notimg">
                <img class="f1img" src="https://myfoodstory.com/wp-content/uploads/2022/04/Veg-Kolhapuri-3-500x500.jpg">
              </div>
               <p class="name1">Kolhapuri Veg</p>
               <button class="ordernow">Order now</button>
            </div>
           
            <div class="f1">
                <div class="f1notimg">
                  <img class="f1img" src="https://i.ytimg.com/vi/yWVVIKtkBm4/maxresdefault.jpg">
                </div>
                 <p class="name1">Tambda Pandra Rassa</p>
                 <button class="ordernow">Order now</button>
              </div>

              <div class="f1">
                <div class="f1notimg">
                  <img class="f1img" src="http://kravingsfoodadventures.com/wp-content/uploads/2022/01/MuttonKohlapuri-H6-1024x682.jpg">
                </div>
                 <p class="name1">Kolhapuri Mutton</p>
                 <button class="ordernow">Order now</button>
              </div>
             
         </div>
  <script type="text/javascript">
   function Btnclick(clickedid)
   { 
	  
      window.location.assign("dishes?id="+clickedid);
   }
   
   
   
  </script>
</body>
</html>