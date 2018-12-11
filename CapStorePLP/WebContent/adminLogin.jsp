<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>


<script type="text/javascript">
function validateForm(){
	var uname=myform.userName.value;
	var upwd=myform.userPwd.value;
	
	var flag=false;
	if(uname==""||uname==null){
		document.getElementById('userErrMsg').innerHTML=" * Please enter userName.";
		
	}
	else if(upwd=="" || upwd==null)
		{
		flag=false;
		document.getElementById('userErrMsg').innerHTML="";
		document.getElementById('pwdErrMsg').innerHTML=" * Please enter password.";
		}
	else if(uname=="Capgemini" && upwd=="capgemini123"){
		flag=true;
		document.getElementById('userErrMsg').innerHTML="";
		document.getElementById('pwdErrMsg').innerHTML="";
		
		}
	else{
		flag=false;
		document.getElementById('userErrMsg').innerHTML="";
		document.getElementById('pwdErrMsg').innerHTML="";
		alert('Invalid login! Please try again!');
	}
	
	if(flag)
		window.location.href = "adminLogin.jsp";
	
	return flag;
}
</script>

</head>
<body id="mainCnt" >
<div >
<div >
<h1 align="center"> WelCome To CapStore</h1>
<hr>

<form name="myform" method="post">
	<table>
		<tr>
			<th colspan="3" >Login Form </th>
		</tr>
		<tr>
			<td>UserName:</td>
			<td>
				<input type="text" name="userName" size="20">
			</td>
			<td>
				<div id="userErrMsg" class="errMessage"></div>
			</td>
		</tr>
		<tr>
			<td>Password:</td>
			<td>
				<input type="password" name="userPwd" size="20">
			</td>
			<td>
				<div id="pwdErrMsg" class="errMessage"></div>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" class="btn" value="Login" onclick="validateForm()">
			</td>
			
		</tr>
		
	</table>


</form>

</div>
<hr>

<div >
	<div > <a href="merchantLogin">Merchant Login</a></div>
	<div > <a href="login">User Login</a></div>
</div>
<hr>
</div>
</body>
</html>
