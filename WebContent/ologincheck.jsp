<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.minds.bean.Dataowner"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>

<body>
	<%
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String omail = request.getParameter("omail");

		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from dataowner where name='" + name
				+ "' and password='" + password + "'");
		if (rs.next()) {

			session.setAttribute("omail", omail);
			session.setAttribute("name", name);
			String downloadkey = request.getParameter("downloadkey");
			session.setAttribute("downloadkey", downloadkey);

			response.sendRedirect("O_Home.jsp");

			System.out.println("dataowner login is added successfully!");

		} else {
			out.println("Invalid password <a href='ologin.jsp'>try again</a>");
		}
	%>

</body>
</html>