<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@page import="Dbcon.DbConnection"%>
<%@page import="com.minds.bean.DataUser"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="u" class="com.minds.bean.DataUser"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Registration</title>
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
					<br>
					<br>
					<br>
					<div class="clr"></div>
					<div class="navbar">
						<div class="menu_navbar">

							<a href="index.jsp">Home Page</a>

							<div class="dropdown">
								<button class="dropbtn">
									Data User <i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="ulogin.jsp">login</a> <a href="ureg.jsp">Registration</a>
								</div>
							</div>
							<a href="Cloud_Login.jsp">Cloud Server</a>
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
									<table border="1" style="text-align: center; margin-left: 0px">
										<tbody>
										<thead>
											<tr>
												<th>id</th>
												<th>Username</th>
												<th>Fileid</th>
												<th>Filename</th>
												<th>Accessfile</th>
												<th>Fileaccessattribute</th>
												<th>Fileaccess</th>
												<th>Time</th>
												<th>Status</th>
												<th>Send key</th>
												<th>Revoke</th>


											</tr>
										</thead>
										<tbody>

											<%
												try {
													String filename = (String) session.getAttribute("filename");
													String description = (String) session
															.getAttribute("description");
													Blob content = (Blob) session.getAttribute("IBE");
													String name = (String) session.getAttribute("name");
													String accessfile = (String) session.getAttribute("accessfile");
													String uname = (String) session.getAttribute("uname");
													String fileaccessattribute = (String) session
															.getAttribute("fileaccessattribute");
													String fileaccess = (String) session.getAttribute("fileaccess");
													String state = (String) session.getAttribute("state");
													String country = (String) session.getAttribute("country");
													String downloadkey = (String) session
															.getAttribute("downloadkey");
													String email = (String) session.getAttribute("email");
													DbConnection db = new DbConnection();
													Connection con = db.getConnection();
													Statement st = con.createStatement();
													ResultSet rs;
													String sql = "select * from request1";
													rs = st.executeQuery(sql);
													while (rs.next()) {
											%>

											<tr>
												<td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>

												<td data-order="<%=rs.getString(5)%>"><%=rs.getString(5)%></td>

												<td><%=rs.getInt(3)%></td>
												<td><%=rs.getString(2)%></td>
												<td data-search="<%=rs.getString(13)%>"><%=rs.getString(13)%></td>
												<td data-filter="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
												<td data-filter="<%=rs.getString(8)%>"><%=rs.getString(8)%></td>
												<td data-search="<%=rs.getString(14)%>"><%=rs.getString(14)%></td>

												<td data-search="<%=rs.getString(17)%>"><%=rs.getString(17)%></td>
												<%-- <td data-filter="<%=rs.getString(12)%>"><%=rs.getString(12)%></td>
					<td data-filter="<%=rs.getString(13)%>"><%=rs.getString(13)%></td>
					<td data-search="<%=rs.getString(14)%>"><%=rs.getString(14)%></td> --%>


												<td><a href="sendreqowner.jsp?id=<%=rs.getInt(1)%>">Send
												</a></td>
												<td><a href="revoke.jsp?id=<%=rs.getInt(1)%>">Revoke
												</a></td>

											</tr>
											<%
												}
													con.close();
												} catch (Exception ex) {
													System.out.println(ex);
												}
											%>
										</tbody>

										<tfoot>

										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript" language="javascript"
						src="js/jquery-1.12.4.js"></script>
					<script src="js/bootstrap.min.js"></script>

					<script type="text/javascript" language="javascript"
						src="js/jquery.dataTables.min.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/dataTables.buttons.min.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/buttons.flash.min.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/jszip.min.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/pdfmake.min.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/vfs_fonts.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/buttons.html5.min.js"></script>
					<script type="text/javascript" language="javascript"
						src="js/buttons.print.min.js"></script>

					<script type="text/javascript">
						$(document)
								.ready(
										function() {

											console.log("now setting table");
											$('#example')
													.DataTable(
															{
																dom : 'Bfrtip',
																"order" : [],
																lengthMenu : [
																		[ -1 ],
																		[ 'Show all' ] ],
																buttons : [
																		'copy',
																		'csv',
																		'excel',
																		'pdf',
																		'print' ]
															});
										});
					</script>
					<!-- end copyrights -->
					<a href="#home" data-scroll class="dmtop global-radius"><i
						class="fa fa-angle-up"></i></a>
					<!-- all js files -->
					<script src="js/all.js"></script>
					<!-- all plugins -->
					<script src="js/custom.js"></script>
</body>
</html>

