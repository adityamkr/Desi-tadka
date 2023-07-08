<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Lora&family=McLaren&family=Nunito+Sans:wght@600&family=Pacifico&family=Poppins:wght@500&family=Roboto:wght@300;400&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
 body{
    background-color:whitesmoke;
    max-width:100%;
    overflow-x: hidden;
 }
.et
{
    text-align: center;
    position: relative;
    right: -49px;
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
    margin-left: 55px;
    border: 2px solid;
    padding: 20px;
    margin-right:40px;
}
.tdmealimg
{
    width: 352px;
    height: 154px;
    border: 2px;
}
.tdimgphoto
{
    width: 352px;
   /* height: 152px;*/
   /* height: 30px;*/
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
    background:#5269ed;
    cursor: pointer;
    border-radius:30px;
}

.flexy
{
    display:flex;
    border: 2px solid;
    background-color:black;
    margin-bottom:55px;
    /*justify-content:space-between;*/
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
     margin-bottom:91px;
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
  display:flex;
  border:2px solid;
  background-color: black;
}
.f1
{
    width: 310px;
    height: 299px;
    border: 2px ;
    padding: 20px;
    margin-left: 138px;
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
    margin-left:20px;
    font-family:"poppins";
    text-align:center;
    margin-bottom:36px;
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

.diversity
{
    text-align: center;
    margin-bottom: 42px;
    font-family: roboto;
}
.rpj
{
        position: relative;
    display: inline-block;
    text-align: center;
    position: relative;
    font-size: 18px;
    font-family: 'Poppins';
    font-size: 20px;
    left: 269px;
    color: #ee0f5b;
}
.outerdiv
{
    width: 1525px;
    border: 2px solid;
}
.interdiv
{
    width: 749px;
    height: 261px;
    display: inline-block;
    border: 2px;
}
.phot1
{
       width: 674px;
    height: 261px;

}
.rightdiv
{
       width: 767px;
    height: 255px;
    border: 2px;
    bottom: 146px;
    position: relative;
    right: 76px;
    display: inline-block;
}
.od
{
    width: 1525px;
    height: 263px;
    border: 2px solid;
    background: black;
    color: wheat;
    margin-bottom:73px;
}
.tagline
{
        display: inline-block;
    text-align: center;
    position: relative;
    bottom: 268px;
    font-size: 20px;
    top: 1px;
    font-family: 'Poppins';
    left: 26px;
}
.viewnow
{
    color: blue;
    position: relative;
    top: 78px;
    font-size: 20px;
    right: 322px;

</style>
</head>
<body>
   <%
   
   System.out.println(session.getAttribute("user"));
   if(session.getAttribute("user")==null)
   {
	   System.out.println("user is"+session.getAttribute("user"));
	   response.sendRedirect("Signup.jsp");
   }
   %>
      
      <jsp:include page="navbar.jsp" />
      
          <h1 class="diversity">Desi Tadka's Diversity</h1>
    
      <div class="od">
            <div class="interdiv">
                <img class="phot1" src="https://indiagateflours.com/superadmin/upload/blog/punjabi-recipes.jpg">
             </div> 
             <div class="rightdiv">
                <p class="rpj">"Rangeela Punjab"</p>
                <p class="tagline">
                   Enjoy the Delicious variety of Punjabi Dishes Starting wth Rs 500/-
                </p>
             <a href="dishes?dish=punjabi_dish" class="viewnow">View Now</a>
             </div>
       </div>
 
       <div class="od">
        <div class="interdiv">
            <img class="phot1" src="https://www.bakingo.com/blog/wp-content/uploads/2021/12/famous-foods-of-delhi.jpg">
         </div> 
         <div class="rightdiv">
            <p class="rpj">"Delhi Darbar"</p>
            <p class="tagline">
               Enjoy the Delicious variety of Delhi Dishes Starting wth Rs 500/-
            </p>
         <a href="dishes?dish=delhi_darbar" class="viewnow">View Now</a>
         </div>
      </div>

            <div class="od">
        <div class="interdiv">
            <img class="phot1" src="https://www.healthkart.com/connect/wp-content/uploads/2022/11/900x500_banner_HK-puran-poli.png">
         </div> 
         <div class="rightdiv">
            <p class="rpj">"Classic Maharashtra"</p>
            <p class="tagline">
               Enjoy the Delicious variety of Marathi Dishes Starting wth Rs 500/-
            </p>
         <a href="dishes?dish=delhi_darbar" class="viewnow">View Now</a>
         </div>
         </div>

         <div class="od">
            <div class="interdiv">
                <img class="phot1" src="https://foodeiz.com/wp-content/uploads/2021/04/Gujarati-Food-1.png">
             </div> 
             <div class="rightdiv">
                <p class="rpj">"Evergreen Gujrat"</p>
                <p class="tagline">
                   Enjoy the Delicious variety of Gujrati Dishes Starting wth Rs 500/-
                </p>
             <a href="dishes?dish=delhi_darbar" class="viewnow">View Now</a>
             </div>
             </div>
</body>
</html>