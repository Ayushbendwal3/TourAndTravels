<!-- Tour And Travel Management  -->

<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%
	HttpSession hs = request.getSession();
	int Booking_id = (int) hs.getAttribute("CC");
	int id = (int) hs.getAttribute("BB");
	PreparedStatement ps = con.prepareStatement("select * from booking where Booking_id=? ");
	ps.setInt(1, Booking_id);
	ResultSet rs = ps.executeQuery();
	rs.next();
	String Place = rs.getString(1);
	String Date = rs.getString(2);
	int Stay = rs.getInt(5);
	int Food = rs.getInt(6);
	int Travel = rs.getInt(7);
	int Total = rs.getInt(8);
	
	ps = con.prepareStatement("select * from user where id= ?");
	ps.setInt(1, id);
	rs = ps.executeQuery();
	rs.next();
	String fname = rs.getString(2);
	String lname = rs.getString(3);
	String cno = rs.getString(6);
%>

<!DOCTYPE html>
<html>
<head>
<style>
#invoice-POS{
  box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5);
  padding:2mm;
  margin: 0 auto;
  width: 500px;
  background: #FFF;
  
  
::selection {background: #f31544; color: #FFF;}
::moz-selection {background: #f31544; color: #FFF;}
h1{
  font-size: 1.5em;
  color: #222;
}
h2{font-size: .9em;}
h3{
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}
 
#top, #mid,#bot{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
}

#top{min-height: 100px;}
#mid{min-height: 80px;} 
#bot{ min-height: 50px;}

#top .logo{
  //float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/logo1.png) no-repeat;
	background-size: 60px 60px;
}
.clientlogo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
	background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  //float:left;
  margin-left: 0;
}
.title{
  float: right;
}
.title p{text-align: right;} 
table{
  width: 100%;
  border-collapse: collapse;
}
td{
  //padding: 5px 0 5px 15px;
  //border: 1px solid #EEE
}
.tabletitle{
  //padding: 5px;
  font-size: .5em;
  background: #EEE;
}
.service{border-bottom: 1px solid #EEE;}
.item{width: 24mm;}
.itemtext{font-size: .5em;}

#legalcopy{
  margin-top: 5mm;
}

  
  
}
.hidden {
  display:none;
}

body {
  background: #edfffe;
}
</style>
<meta charset="ISO-8859-1">
<title>DreamCaster ~ Travelicious</title></head>
<body>
    <div id="invoice-POS">
    
    <div align="center" id="top">
      <div class="logo"></div>
      <div class="info"> 
        <h2>DreamCaster ~ Travelicious</h2>
      </div><!--End Info-->
    </div><!--End InvoiceTop-->
    
    <div id="mid">
      <div class="info">
        <h2 align="center">Receipt</h2>
        <p> 
        	Booking No. :<%=Booking_id %><br>
        	Travelling Date        : <%=Date %><br>
           	Destination Place       : <%=Place %><br>
        </p>
        <div align="right">
        Customer Name   : <%=fname %> <%=lname %><br>
        Customer Mobile : <%=cno %><br>
        </div>
      </div>
    </div><!--End Invoice Mid-->
    
    <div id="bot">

					<div id="table" align="center">
					<hr>
					<hr>
						<table >
							<tr class="tabletitle">
								<td class="item"><h3>Particulars</h3></td>
								<td class="Rate"><h3>Amount</h3></td>
							</tr>

							<tr class="service">
								<td class="tableitem"><p class="itemtext">Stay</p></td>
								<td class="tableitem"><p class="itemtext"><%=Stay %></p></td>
							</tr>

							<tr class="service">
								<td class="tableitem"><p class="itemtext">Food</p></td>
								
								<td class="tableitem"><p class="itemtext"><%=Food %></p></td>
							</tr>

							<tr class="service">
								<td class="tableitem"><p class="itemtext">Travel</p></td>
								<td class="tableitem"><p class="itemtext"><%=Travel %></p></td>
							</tr>

							<tr class="service">
								
								<td class="tableitem"><p class="itemtext">Total</p></td>
								<td class="tableitem"><p class="itemtext"><%=Total %></p></td>
							</tr>
						</table>
					</div><!--End Table-->

					<div id="legalcopy">
					<hr>
					<hr>
						<p class="legal" align="center"><strong>Enjoy Your Trip With US!</strong> 
						</p>
					</div>

				</div><!--End InvoiceBot-->
  </div><!--End Invoice-->
 <div align="center">
  <input type="submit" value="print" onClick="window.print()"/> 
 </div> 
</body>
</html>
  