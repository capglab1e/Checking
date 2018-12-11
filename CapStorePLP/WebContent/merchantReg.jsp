<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function validate(){
if(document.f.password.value!=document.f.confirmpass.value){
alert("Password and Confirm Password should be same! Re-enter confirm-password!");
document.f.confirmpass.value="";
return false;
}
return true;
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to CapStore</h1>
<c:form name="f" modelAttribute="merchant" action="saveMerchant" method="post" onsubmit="return validate();">
<div>
      		<label for="uname"><b>UserName</b></label>
      		<input type="text" placeholder="Enter UserName" name="name"  path="name"
      		 required>
	  </div>
	<div>
      		<label for="uid"><b>Email Id</b></label>
      		<input type="text" placeholder="Enter Email Id" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" path="email"
      		title="enter valid email id" required>
	  </div>
	  <div>
      		<label for="company"><b>Company_Name</b></label>
      		<input type="text" placeholder="Enter Company Name" name="Company_Name" path="Company_Name"
      		 required>
	  </div>
	  <div>
      		<label for="Company_Address"><b>Company_Address</b></label>
      		<input type="text" placeholder="Enter Company Address" name="Company_Address" path="Company_Address"
      		 required>
	  </div>
	   <div>
      		<label for="phone_no"><b>Phone No</b></label>
      		<input type="text" placeholder="Enter Phone No" name="phone_no" pattern="[6-9][0-9]{9}" path="phone_no"
      		 required>
	  </div>
	    <div>
      		<label for="psw"><b>Password </b></label>
      		<input type="password" placeholder="Enter Password" pattern="[A-Z]{1}[A-Za-z0-9]{7,13}" 
      		title="Password should start form a capital letter and can contain small characters,capital characters
     		and digits(0-9) and should be atleast 8 digit and can be 13 digit long" name="password" path="password" required>
      </div>
      <div> 
       	<label for="confirmpass"><b> Confirm Password</b></label>
       	
      	<input type="password" placeholder="Enter Password" name="confirmpass"  required>
      	
    </div>  
	   <div>
      		
      		<input type="submit" name="submit" value="Register" id="submit">
      </div>
     
      
        <a href="login.jsp">Already Registered</a>
        
</c:form>

</body>
</html>