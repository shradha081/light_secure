<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="javax.swing.JOptionPane"%>
<%@ page import="java.sql.*"%>
<%@page import="Dbcon.DbConnection"%>
<%@ page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	try {

		String sql = "SELECT * FROM cloud where username='" + username
				+ "' and password='" + password + "' ";
		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(sql);
	
		if (rs.next() == true) {

			response.sendRedirect("Cloud_Home.jsp");

		} else {

			response.sendRedirect("Cloud_Login.jsp");
		}

	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>

