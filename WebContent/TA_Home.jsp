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
<title>TA Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>


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
					<br>
					<br>
					<br>
					<div class="clr"></div>
					<div class="navbar">
						<div class="menu_navbar">
							<a href="index.jsp"> Home </a> <a href="TA_Login.jsp">TA </a> <a
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
									<h2>
										<span>Welcome TrustAuthority Provider </span>
									</h2>
									<p>&nbsp;</p>
									<div class="img">
										<img src="images/image2.jpg" width="200" height="210" alt=""
											class="fl" />
									</div>
									<div class="post_content">
										<p align="justify" class="style2">User activity logs can
											be a valuable source of information in cloud forensic
											investigations; hence, ensuring the reliability and integrity
											of such logs is crucial. Most existing solutions for secure
											logging are designed for conventional systems rather than the
											complexity of a cloud environment. In this paper, we propose
											the Cloud Log Assuring Soundness and Secrecy (CLASS) process
											as an alternative scheme for the securing of logs in a cloud
											environment. In CLASS, logs are encrypted using the
											individual user’s public key so that only the user is able to
											decrypt the content. In order to prevent unauthorized
											modification of the log, we generate proof of past log (PPL)
											using Rabin’s fingerprint and Bloom filter. Such an approach
											reduces verification time significantly. Findings from our
											experiments deploying CLASS in OpenStack demonstrate the
											utility of CLASS in a real-world context.</p>
									</div>
									<p class="infopost">&nbsp;</p>
									<div class="clr"></div>
								</div>
							</div>
							<div class="sidebar">
								<div class="gadget">
									<h2 class="star">Menu</h2>
									<div class="clr"></div>
									<ul class="sb_menu">
										<li><a href="TA_Home.jsp">Home</a></li>
										<li><a href="TA_Userattribute.jsp">View User
												Attribute</a></li>
										<li><a href="TA_Ownerpublic.jsp">View Owners public</a></li>
										<li><a href="viewownerdetails.jsp">View Owner Details</a></li>
										<li><a href="viewuserdetails.jsp">View User Details</a></li>
										


										<li><a href="TA_Login.jsp">Logout</a></li>
									</ul>
								</div>
							</div>
							<div class="clr"></div>
						</div>
					</div>

				</div>
				<div align=center></div>
</body>
</html>
