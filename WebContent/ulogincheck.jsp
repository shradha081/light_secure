<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*"%>
<%@page import="Dbcon.DbConnection"%>
<%@ page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String uname = request.getParameter("uname");
	String password = request.getParameter("password");

	DbConnection db = new DbConnection();
	Connection con = db.getConnection();
	Statement st = con.createStatement();

	ResultSet rs;
	rs = st.executeQuery("select * from datauser where uname='" + uname
			+ "' and password='" + password + "'");
	if (rs.next()) {

		String email = rs.getString("email");
		session.setAttribute("email", email);

		session.setAttribute("uname", uname);
		String fileaccessattribute = rs
				.getString("fileaccessattribute");

		session.setAttribute("fileaccessattribute", fileaccessattribute);
		String country = rs.getString("country");
		session.setAttribute("country", country);
		String state = rs.getString("state");
		session.setAttribute("state", state);

		String fileaccess = rs.getString("fileaccess");
		session.setAttribute("fileaccess", fileaccess);

		response.sendRedirect("U_verify.jsp");
		System.out.println("dataowner login is added successfully!");

	} else {
		out.println("Invalid password <a href='ulogin.jsp'>try again</a>");
	}
%>

