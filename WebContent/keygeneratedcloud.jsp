<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%
	String id = request.getParameter("id");
	int id1 = Integer.parseInt(id);
	
	String email = (String) session.getAttribute("user");

	String j = request.getQueryString();
	Connection con = DbConnection.getConnection();
	Statement st = con.createStatement();

	int i = st
			.executeUpdate("update request1 set status = 'sended' where id = '"
					+ id1 + "'");
	if (i != 0) {
		response.sendRedirect("Cloudrequestaccess.jsp?success");
	} else {
		response.sendRedirect("publickeyreq.jsp? msg=Error");
	}
%>