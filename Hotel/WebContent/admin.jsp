<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.outerdiv
{
    height: 113px;
    width: 456px;
    height: 166px;
    height: 398px;
    border: 2px solid;
    margin: auto;
    margin-top: 100px;
    background-color: cadetblue;
    font-size: 18px;
}
p{
    text-align: center;
    font-size: 26px;
    font-family: roboto;
}
.inputs
{
    width: 398px;
    height: 27px;
    margin-left: 20px;
    border: 2px solid;
    border: 2px solid;
    padding-left: 10px;
    margin-bottom: 44px;
}
.inbtn
{
    width: 83px;
    height: 30px;
    position: relative;
    margin-left: 10px;
    
    position: relative;
    left: 188px;
    left: 2;
    background: #49da49;
    top: 21px;
}
</style>

</head>

<body>
   
    <div class="outerdiv">
        <p>Admin Login</p>
        <form action="admin" method="post">
            <input class="inputs" type="text" placeholder="Admin Name" name="fname">
            <input class="inputs" type="password" placeholder="Password" name="password">
            <input type="submit" value="submit" class="inbtn">
        </form>
    </div>
</body>

<script type="text/javascript">
  
</script>
</html>