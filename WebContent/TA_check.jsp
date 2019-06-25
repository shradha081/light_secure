<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*"%>
<%@page import="Dbcon.DbConnection"%>
<%-- <%@ include file="connect.jsp"%> --%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String fileaccessattribute = request
			.getParameter("fileaccessattribute");

	try {

		String sql = "SELECT * FROM ta where username='" + username
				+ "' and password='" + password + "' ";
		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(sql);

		if (rs.next() == true) {
			session.setAttribute("fileaccessattribute",
					fileaccessattribute);
			response.sendRedirect("TA_Home.jsp");

		} else {

			response.sendRedirect("wronglogin.html");
		}

	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>

