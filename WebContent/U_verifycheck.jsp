<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@ page import="com.minds.bean.Dataowner"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body>
	<%
		String secret_key = request.getParameter("secret_key");

		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from datauser where secret_key='"
				+ secret_key + "'");
		if (rs.next()) {

			response.sendRedirect("U_Home.jsp");
			System.out.println("datauser login is added successfully!");

		} else {
			out.println("Invalid password <a href='ulogin.jsp'>try again</a>");
		}
	%>

</body>
</html>