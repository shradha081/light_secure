<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>

<%
	String id = request.getParameter("id");
	int id1 = Integer.parseInt(id);
	/* String id1 = (String) session.getAttribute("id1");
	 */
	Random RANDOM2 = new SecureRandom();
	int PASSWORD_LENGTH2 = 10;
	String letters2 = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
	String downloadkey = "";

	for (int i = 0; i < PASSWORD_LENGTH2; i++) {
		int index2 = (int) (RANDOM2.nextDouble() * letters2.length());
		downloadkey += letters2.substring(index2, index2 + 1);
		System.out.println("downloadkey :" + downloadkey);
	}
	String j = request.getQueryString();
	Connection con = DbConnection.getConnection();
	Statement st = con.createStatement();

	int i = st.executeUpdate("update upload set downloadkey = '"
			+ downloadkey + "' where id = '" + id1 + "'");
	if (i != 0) {
		response.sendRedirect("viewuploadowner.jsp?success");

	} else {
		response.sendRedirect("viewuploadowner.jsp? msg=Error");
	}
%>