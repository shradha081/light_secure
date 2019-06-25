<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>


<%
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;

	String downloadkey = request.getParameter("downloadkey");
	System.out.print("downloadkey :" + downloadkey);

	try {
		con = DbConnection.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select * from request1 where downloadkey='"
				+ downloadkey + "'");
		if (rs.next()) {
			String downkey = rs.getString("downloadkey");
			session.setAttribute("downloadkey", downkey);
			response.sendRedirect("down1.jsp?msg=success");
		} else {
			response.sendRedirect("downloadkey.jsp?msgg=failed");
		}

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
