<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to CapStore</h1>
<%-- <h3>${error}</h3> --%>
<c:form action="retrieve_customer" modelAttribute="data">
<h3>User Login</h3>

	<br>
	<div>
      		<label for="uname"><b>User Id</b></label>
      		<input type="text" placeholder="Enter email" name="email"  path="email"
      		 required>
	  </div>
	    <div>
      		<label for="psw"><b>Password </b></label>
      		<input type="password" placeholder="Enter Password"
      		 name="password" path="password" required>
      </div>
	   <div>
      		
      		<input type="submit" name="submit" value="Login" id="submit">
      </div>
       </div>
      
        <a href="forgetPass">Forget Password</a>
        <br>
        <a href="registration">New User</a>
        <br>
        <a href="merchantLogin">Merchant Login</a><br>
        <a href="adminLogin">Admin Login</a>
</c:form>

</body>
</html>