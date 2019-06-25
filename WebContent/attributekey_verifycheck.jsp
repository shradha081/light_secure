<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.minds.bean.Dataowner"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body>
	<%
		
		String pkey = request.getParameter("pkey");

	
		String secret_key = request.getParameter("secret_key");
		String email = request.getParameter("email");

		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from requestuser where pkey='"
				+ pkey + "'");
		if (rs.next()) {
			session.setAttribute("pkey", pkey);
			session.setAttribute("secret_key", secret_key);
			session.setAttribute("user", email);
			
			response.sendRedirect("dataaccess_request.jsp");
			System.out
					.println("attributekey verified is added successfully!");

		} else {
			out.println("Invalid password <a href='attributekeyverify.jsp'>try again</a>");
		}
	%>

</body>
</html>