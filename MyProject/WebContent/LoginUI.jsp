<!-- Tour And Travel Management  -->

<!DOCTYPE html>
<html>
<head>
<title>DreamCaster ~ Travelicious</title>

	<style type="text/css">
	body{margin: 0; padding: 0;background-color:black;}
		.head{width: 90%;height: 250px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(22.jpg); background-repeat: no-repeat;background-size:cover; /*background-attachment: fixed;*/}



		.nav{background-color:black; color: white; width: 90.1%; height: 50px;position: absolute;top: 275px;left: 69px;}
		.ul1{margin: 0px auto; padding: 10px;}
		.list{float: left; word-spacing: 3px; list-style: none; text-align: center;  padding: 0px 110px; line-height: 30px;text-decoration-line: none;}
		.head1{width: 90%;height: 600px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}
		a{text-decoration: none; color:white;}



        .btn{background-color:#81BEF7; font-size:20px; border-radius: 10px; text-decoration-line: none; padding:5px 10px;    }



		
	</style>

</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list">HOME</li>
				<li class="list">ABOUT US</li>
				<li class="list">CONTACT US</li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
	<div align="center" style="border: tdin; font-size: 20px">
	<h1 style="text-align: Center; color: blue;">User Login Page </h1>
	<form action="Login.jsp" method="post" >
	<table>
	<tr>
	<td>Username Or Email</td>
	<td><input type="text" name=uname required="required"></td>
	</tr>
	<tr>
	<td>Password</td>
	<td><input type="password" name=pwd required="required"></td>
	</tr>
	<tr>
	<td></td>
	<td align="left"><input type=submit value=Login></td>
	</tr>
	</table>
	<h5><a style="color:black" href="ForgetPasswordUI.jsp">Forget Password</a></h5>
	<h4><a style="color:black" href="NewUserUI.jsp">New User Click Here</a></h4><br>
				<a href="Admin.jsp" class="btn">ADMIN</a>
	
	</form>
</div>
</div>
</body>

</body>
</html>