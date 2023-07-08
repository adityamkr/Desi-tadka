<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
body{
/*
    background-color:whitesmoke;
    max-width:100%;*/
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
.dtimg
{
    width: 103px;
    height: 99px;
    position: relative;
    left: 20px;
    top: 0px;
    border-radius: 65px;
}
.pd
{
    text-align: center;
    font-family: roboto;
    word-spacing: 3px;
    margin-bottom: 10px;
}

.outerdivpj
{
 display:flex;
 border:2px solid;
 flex-wrap:wrap;

}

.innerdivpj
{
    width: 235px;
    height: 272px;
    margin-left: 48px;
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
<body>


       <div class="navdiv">
    <nav>
        <img class="dtimg" src="data:image/jpeg;base64,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"/>
        <ul class="uul">
           <%
             if(session.getAttribute("user")== null)
             {
            %>
                <li class="myli"><a href="Signup.jsp">Sign-Up</a>
            
             <%
             }
             else
             {
            	// session.invalidate();
            	%>
            	  <li class="myli"><a href="logout">Logout</a>
            	<% 
             }
             %>	 
             
          
          
            <li class="myli"><a href="index.jsp">Home</a></li>
            <li class="myli"><a href="categories.jsp">Categories</a></li>
            <li class="myli"><a href="cartpage.jsp">My-cart</a></li>
            <li class="myli"><a href="admin.jsp">Admin</a></li>
        </ul>
    </nav>
   </div>
    
</body>
</html>