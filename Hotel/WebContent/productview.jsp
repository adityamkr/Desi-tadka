<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.productviewdiv
{
    width: 1443px;
    height: 506px;
    border: 2px solid;
    margin-top: 43px;
    margin-left: 37px;
}
.productimagediv
{
    display: inline-block;
    margin-left: 20px;
    width: 387px;
    margin-top: 27px;
    height: 450px;
    border: 2px solid;
}
.proimgdiv
{
    width:387px;
    height:450px;
}
.leftdiver
{
    width:400px;
    height:460px;
    border:2px solid;   
}
.productdescdiv
{
        display: inline-block;
    border: 2px solid;
    width: 882px;
    bottom: 134px;
    margin-left: 23px;
    position: relative;
    font-size: 23px;
    height: 449px;
}
.proname
{
    text-align:center;
    font-family:poppins;

}
.ptag
{
    display: inline-block;
    margin-left: 28px;
}
.pactualtag
{
    display: inline-block;
    margin-left: 63px;
}
.quantity
{
        /* display: inherit; */
        position: relative;
    left: 20px;
}
.increment
{
    width: 30px;
    position: relative;
    left: 159px;
    font-size: 15px;
    bottom: 49px;
    height: 22px;
}
.px
{
   padding-bottom:17px;
    display: inline-block;
}

.operations
{
    display:inline-block;
}
.quamount
{
    width: 28px;
    position: relative;
    left: 212px;
    height: 20px;
    padding: 1px;
    padding-top: 6px;
    bottom: 76px;
    text-align: center;
    font-weight:bolder;
    font-size: 12px;
    border: 2px solid;
}
.decrement
{
    width: 25px;
    position: relative;
    left: 270px;
    bottom: 104px;
    text-align: center;
    font-size: 17px;
    padding-bottom: 18px;
    height: 2px;
    display: inline-block;
}
.ta
{
    position: relative;
    left: -20px;
    display:inline-block;
}
.am
{
    margin-left: -4px;
    display: inline-block;
}
.atc
{
    width: 120px;
    height: 30px;
    position: relative;
    border: 2px solid;
    left: 144px;
    background: #87ed11;
    top: 78px;
}

</style>
</head>
<body>
  
           <jsp:include page="navbar.jsp" />
           
           <%
           
           response.setHeader("Cache-Control","no-cache,no-store");
           System.out.println("waaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
         //  String x=(String)request.getParameter("dname");
                 
         
              String pname=(String)request.getAttribute("pname");
              String abc=String.valueOf(request.getAttribute("pprice"));
              Integer  pprice=Integer.parseInt(abc);
              String px=String.valueOf(pprice);
              String pquantity=(String)request.getAttribute("pquantity");
              String pimage =(String)request.getAttribute("pimage");
              String pid=String.valueOf(request.getAttribute("pid"));
              String uid=String.valueOf(session.getAttribute("uid"));
             //   System.out.println("uid here"+session.getAttribute("uid")) ;
               System.out.println(pquantity+" "+pimage+" "+pid+" "+uid+" "+pname+" "+pprice);
               
              System.out.println("hello world");
           %>
           
           
	    	<div class="productviewdiv">
    
           <form  action="cartpage" method="post">
           
            <div class="productimagediv"> 
                <img  class="proimgdiv" src=<%=pimage%>>
                <input type="hidden" name="proimg" value='<%=pimage %>'>
             </div>
            
              <div class="productdescdiv">
                <h2 class="proname"><%=pname %></h2>
                 <input type="hidden" name="proname" value='<%=pname%>'>
                <p class="ptag" >Price :</p>
                <p class="pactualtag">Rs <%=pprice %> <%=pquantity %></p>
                 <input type="hidden" name="productprice" value=<%=pprice %>>
                
                  <input type="hidden" name="productqty" value='<%=pquantity %>'>
                 
                <p class="quantity">Quantity :</p>
                <div class="operations">
                    <input type="button" class="increment" onclick="increase()" value="+">
                    <div id="amt" class="quamount">1</div>
                    
                    <input type="hidden" id="actxt" name="txtqty" value=1>
                    
                    <input type="button" class="decrement" onclick="decrease()" value="-">
                </div>
                <p class="ta">Total Amount :</p>
                <p class="am" id="logic" >Rs <%=pprice %></p>
                 <input type="hidden" id="cpprice"name="finalamt" value=<%=pprice %>>
                 <input type="submit" class="atc"  value="Add to Cart"  onclick="clickme()" >
              </div>
              </form>
              </div>
              
  <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
          
               
      <script type="text/javascript">
       
      let count=1;
      let amount=1;
      function increase()
      {
        count=Number(document.getElementById("amt").innerHTML);
        count+=1;
       amount='<%=pprice%>';
        
         amount=amount*count;
       
        document.getElementById("amt").innerHTML=count;
        document.getElementById("actxt").value=count;
        document.getElementById("logic").innerHTML="Rs "+amount;
        document.getElementById("cpprice").value="Rs "+amount;
        
       
         
        
      }
      
      
      function decrease()
      {
      
        let count=Number(document.getElementById("amt").innerHTML);
        if(count>1)
        {
          count-=1;
          amount='<%= pprice %>';
          
          amount=amount*count;
        document.getElementById("amt").innerHTML=count;
        document.getElementById("actxt").value=count;
        document.getElementById("logic").innerHTML="Rs "+amount;
        document.getElementById("cpprice").value="Rs "+amount;
        }
      
      }
      
      function clickme()
      {
          count=Number(document.getElementById("amt").innerHTML);
          amount='<%=pprice%>';
          amount=amount*count;
          
              let uid='<%=uid%>'
             console.log("my uid",uid);
              let peid='<%=pid%>'
              let pname='<%=pname%>'
              let pimage='<%=pimage%>'
              let px='<%=px%>'
              
             
            	  $(document).ready(function()
                		  {
                	        console.log("this is uid"+uid);
                	      $.post("cartpage",{uid:uid,pid:peid,pname:pname,pquantity:count,ptprice:"Rs "+amount,pimage:pimage,pprice:px},function(data)
                	      {
                	    	 // console.log(window.location.href);
                	    	  const url = new URL(window.location.href);
                	    	  const searchParams = url.searchParams;
                	    	  let a= searchParams.get('dname');
                	    	  
                	    	   let s="dishes?dish="+a;
                	  
                	    	  window.location.href=s;
                	      })
                	      
                		  })
           console.log("rfgyrfuhrfcede");
           
                
      }
      
      
     
      
      </script>
</body>
</html>