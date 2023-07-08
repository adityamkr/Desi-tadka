<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
 .formdiv
 {
       width: 553px;
    height: 575px;
    border: 2px solid;
    margin: auto;
    margin-top: 38px;
    background-color: #ed6359;
 }
 .name
 {
    width: 474px;
    height: 30px;
    position: relative;
    top: 55px;
    left: 20px;
    border: 2px solid;
    font-size: 20px;
    margin-bottom: 38px;
    padding-left: 10px;
 }
 .signbtn
 {
    border: 2px solid;
    position: relative;
    top: 59px;
    width: 100px;
    left: 230px;
    height: 35px;
    cursor: pointer;
    background: chartreuse;
 }
 .alreadyacc
 {
    position: relative;
    top: 89px;
    right: -18px;
    font-family: roboto;
 }
 .login
 {
    right: -38px;
    position: relative;
    font-size: 19px;
    top: 87px;
    text-decoration: none;
 }
 .head
 {
    font-size: 23px;
    text-align: center;
    font-family: 'Roboto';
    font-weight: 700;
    margin-bottom: 0px;
 }
</style>
</head>

<body>
     <div class="formdiv"> 
       <p class="head">Sign Up</p>
        <form action="signup" method="post">
            <input type="text" class="name" placeholder="First name" name="fname">
            <input type="text" class="name" placeholder="Last name" name="lname">
            <input type="text" class="name" placeholder="Age" name="age">
            <input type="text" class="name" placeholder="email id" name="email">
            <input type="text" class="name" placeholder="Phone no" name="phoneno">
             <input type="submit" class="signbtn" value="Sign up">
        </form>
        <span class="alreadyacc">Already have an account ?</span>
             <a href="signin.jsp" class="login">Sign in</a>
     </div>
</body>
</html>