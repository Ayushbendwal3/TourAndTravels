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
		.list{float: left; word-spacing: 3px; list-style: none; text-align: center;  padding: 0px 90px; line-height: 30px; text-decoration-line: none;}
		.head1{width: 90%;height: 600px; background-color: white;margin:10px; float: left; margin-left:70px; border-radius:7px; background-image: url(23.jpg); background-repeat: no-repeat;background-size: cover;/* background-attachment: fixed;*/}
		a{text-decoration: none; color:white;}



        .btn{background-color:#81BEF7; font-size:20px; border-radius: 10px; text-decoration-line: none; padding:5px 10px;    }		
	</style>
</head>
<body>

	<div class="head"></div>


	<div class="nav">
			<ul class="ul1">
				<li class="list"><a href="ViewPackages.jsp">View Packages</a></li>
				<li class="list"><a href="BookingDetails.jsp">View Booking Details</a></li>
				<li class="list"><a href="UserDetails.jsp">View User Details</a></li>
				<li class="list"><a href="Logout.jsp">LOGOUT</a></li>
			</ul>
	</div>
		<div class="head1" style="background-color: blue;border-radius:7px;background-image: url(30.jpg);background-repeat: no-repeat;background-size:cover;"><br>
		<div align="center" style="border: tdin; font-size: 20px">
		<h2 align="center">Add Tour packages</h2>
		<form action="ATP" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td align="left">Packages ID</td>
					<td><input type="text" name=ID></td>
				</tr>
				<tr>
					<td align="left">Add place</td>
					<td><input type="text" name=PLACE ></td>
				</tr>
				<tr>
					<td align="left">Number of Adults</td>
					<td><input type="text" name=ADULTS ></td>
				</tr>
				<tr>
					<td align="left">Number of Children</td>
					<td><input type="text" name=CHILDREN></td>
				</tr>
				<tr>
					<td align="left">Description</td>
					<td><textarea rows="2" cols="20" name=DESCRIPTION style="width: 66%"></textarea></td>
				</tr>
				<tr>
					<td align="left">Stay Amount</td>
					<td><input type="text" name=STAY></td>
				</tr>
				<tr>
					<td align="left">Food Amount</td>
					<td><input type="text" name=FOOD></td>
				</tr>
				<tr>
					<td align="left">Bus Amount</td>
					<td><input type="text" name=BUS></td>
				</tr>
				<tr>
					<td align="left">Train Amount</td>
					<td><input type="text" name=TRAIN></td>
				</tr>
				<tr>
					<td align="left">Airlines Amount</td>
					<td><input type="text" name=AIRLINES></td>
				</tr>
				<tr>
					<td align="left">Number of Days</td>
					<td>
					<select name=DAY>
					<option>--Select--</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					</select></td>					
				</tr>
				<tr>
					<td align="left">Number of Nights</td>
					<td>
					<select name=NIGHT>
					<option>--Select--</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					</select></td>					
				</tr>
				<tr>
                    <td>Portrait Photo: </td>
                    <td><input type="file" name="photo" size="5000"/></td>
                </tr>
				<tr>
					<td></td><td align="left"><input type=submit value="Submit"></td>
				</tr>
			</table>	
		</form>
</div>
</div>
</body>
</html>