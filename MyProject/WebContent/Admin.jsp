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
		.list{float: left;word-spacing: 10px;list-style: none;text-align: center;  padding: 0px 110px; line-height: 30px;}
		.head1{width: 90%;height: 500px; background-color: white;margin:20px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}



        .btn{background-color:#81BEF7; font-size:25px; border-radius: 10px;}



		
	</style>

</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list">HOME</li>
				<li class="list">ABOUT US</li>
				<li class="list">CONTACT US</li>
				<li class="list">LOGIN</li>
			</ul>
	</div>



	<div align="center" class="head1" style="top: 20px;">
		<h1 style="text-align: center;">Admin Login</h1><br>
		<form action="AdminLogin.jsp" method="post">					
				<input type="text" name="uname" placeholder="Admin Id" Required><br><br>
				<input type="password" name="pwd" placeholder="Password" Required><br><br>
				<input type="submit" class="btn" name="" value="Login">
		</form>
	</div>

	

</body>
</html>