<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1><p class="forlegends">Your  Profile</p></h1></center>
					
					<div class="panel panel-default">
					  	
						<div class="panel-body">
							<center><h2><p class="myachead">Name: 
							<span class="myactext">${user.fname} ${user.lname}</span></p></h2></center>
							<hr />
<center><h2><p class="myachead">E-mail: <span class="myactext">${user.email}</span></p></h2></center>
							<hr />
<center><h2><p class="myachead">Mobile Phone Number: <span class="myactext">${user.pno}</span></p></h2></center>
						
							<hr>
<center><h2><p class="myachead">Address: <span class="myactext"><br/>${user.add1}${user.add2}${user.add3} <br/> City:- ${user.city} <br/>${user.state} <br/>${user.pincode}</span></p><h2></center>
							

						</div>							

			
		
					</div>
</body>
</html>