<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>User Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

</head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.inputs {
	background: #f5f5f5;
	font-size: 0.8rem;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
	padding: 10px 10px;
	width: 200px;
	margin-bottom: 20px;
	box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.1);
	clear: both;
}

.inputs:focus {
	background: #fff;
	box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba(0, 0, 0, 0.2), 0px
		5px 5px rgba(0, 0, 0, 0.15);
	outline: none;
}

.inputss {
	background: #f5f5f5;
	font-size: 0.8rem;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
	padding: 10px 10px;
	width: 220px;
	margin-bottom: 20px;
	box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.1);
	clear: both;
}

.inputss:focus {
	background: #fff;
	box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba(0, 0, 0, 0.2), 0px
		5px 5px rgba(0, 0, 0, 0.15);
	outline: none;
}

.button {
	background-color: #0096da; /* Green */
	border: none;
	color: white;
	padding: 10px 23px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.navbar {
	overflow: hidden;
	background-color: #eeeeee;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: pink;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.5);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

/* .dropdown-content a:hover {
  background-color: #ddd;
} */
.dropdown:hover .dropdown-content {
	display: block;
}
</style>

</head>
<%
	if (request.getParameter("msg") != null) {
%>
<script>
	alert('Registration Succesfully');
</script>
<%
	}
%>

<body>

	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<h1>A Lightweight Secure Data Sharing Scheme for Mobile Cloud
						Computing</h1>
					<br> <br> <br>
					<div class="clr"></div>
					<div class="navbar">
						<div class="menu_navbar">
							<a href="index.jsp">Home </a> <a href="TA_Login.jsp">TA </a> <a
								href="Cloud_Login.jsp">Cloud Server </a>
							<div class="dropdown">
								<button class="dropbtn">
									Data User <i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="ulogin.jsp">login</a> <a href="ureg.jsp">Registration</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									Data Owner <i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="ologin.jsp">login</a> <a href="oreg.jsp">Registration</a>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="clr"></div>
					<div class="slider">
						<div id="coin-slider">
							<a href="#"><img src="images/c7.jpg" width="960" height="335"
								alt="" /> </a>
							<!-- <a href="#"><img src="images/cloud.jpg" width="960" height="335" alt="" /> </a> -->
							<a href="#"> <img src="images/nkj.jpg" width="960"
								height="335" alt="" />
							</a> <a href="#"><img src="images/c1.jpg" width="960"
								height="350" alt="" /> </a>
						</div>
						<div class="clr"></div>
					</div>
					<div class="clr"></div>
					<div class="content">
						<div class="content_resize">
							<div class="mainbar">
								<div class="article">
									<h1>Data User Registration</h1>
									<br> <br>
									<div class="gadget">
										<div class="clr"></div>

										<form action="Registeruser.jsp" method="post">
											<!--  <input type="hidden"class="inputs" name="uid" required="" placeholder="id" />  -->
											<input type="text" class="inputs" name="uname" required=""
												placeholder="Your Name" /> <input type="password"
												class="inputs" name="password" required=""
												placeholder="Password" /> <br> <input type="email"
												class="inputs" name="email" required="" placeholder="e-mail" />
											<input type="date" class="inputs" name="dob" required=""
												placeholder="Date Of Birth" /><br> <select
												class="inputss" required="" name="gender">
												<option value="select">Gender</option>
												<option value="male">Male</option>
												<option value="female">Female</option>
											</select> <input type="text" class="inputs" name="contactno"
												required="" placeholder="contactno" /><br> <input
												type="text" class="inputs" name="state" required=""
												placeholder="State" /> <input type="text" class="inputs"
												name="country" required="" placeholder="Country" /><br>
											<select class="inputss" required=""
												name="fileaccessattribute">
												<option value="select">fileaccessattribute</option>
												<option value="sports">sports</option>
												<option value="politics">politics</option>
												<option value="enterprenur">enterprenur</option>
												<option value="photography">photography</option>
											</select> <select class="inputss" required="" name="fileaccess">
												<option value="select">fileaccess</option>
												<option value="sports">sports</option>
												<option value="enterprenur">enterprenur</option>
												<option value="politics">politics</option>
												<option value="photography">photography</option>

											</select> <br>

											<!-- <input type="hidden" value="3" name="status" /> -->
											<input type="Submit" value="Register" class="button">
										</form>
									</div>
									<!---End Body -->
								</div>
							</div>
							<div class="sidebar">
								<div class="gadget">
									<br> <br> <br>
									<p>
										<img src="images/userreg.jpg" width="299" height="293" />
									</p>

								</div>

							</div>
						</div>
						<div class="clr"></div>
					</div>
					<hr>
					<div class="footer">
						<div class="footer_resize">
							<p class="lf">
								Copyright &copy; <a href="#"></a>
							</p>
							<p class="rf">
								Design by <a target="_blank" href="/"></a>
							</p>
							<div style="clear: both;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>