<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="algorithm.UserMail2"%>
<%@ page import="java.sql.*"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="com.minds.bean.DataUser"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.security.SecureRandom"%>
<%
	try {
		/* 	final String filepath = "D:\\"; */

		String url = "jdbc:mysql://localhost:3306/lightsecure";
		String user = "root";
		String password = "admin";
		Connection conn = DriverManager.getConnection(url, user,
				password);

		String id = request.getParameter("id");
		int id1 = Integer.valueOf(id);

		int id2 = Integer.valueOf(id);

		String filename = request.getParameter("filename");
		String accessfile = request.getParameter("accessfile");
		String description = request.getParameter("description");
		String content = request.getParameter("content");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String uname = (String) session.getAttribute("uname");
		String fileaccessattribute = request
				.getParameter("fileaccessattribute");
		String fileaccess = request.getParameter("fileaccess");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String status = "waiting";

		String secret_key = request.getParameter("secret_key");
		String pkey = request.getParameter("pkey");
		/*  String downloadkey= (String)session.getAttribute("downloadkey"); 
		    /*  */String downloadkey = request
				.getParameter("downloadkey");
		DateFormat dateFormat = new SimpleDateFormat(
				"yyyy.MM.dd G 'at' HH:mm:ss ");
		Date date = new Date();
		String time = dateFormat.format(date);
		System.out.println("current Date " + time);
		Connection con = DbConnection.getConnection();
		Statement st = con.createStatement();

		String sql = "insert into request1(filename,oid,uid,uname,email,fileaccessattribute,fileaccess,state,country,name,description,accessfile,time,secret_key,pkey,status,downloadkey,content) values ('"
				+ filename
				+ "',"
				+ id1
				+ ","
				+ id2
				+ ",'"
				+ uname
				+ "','"
				+ email
				+ "','"
				+ fileaccessattribute
				+ "','"
				+ fileaccess
				+ "','"
				+ state
				+ "','"
				+ country
				+ "','"
				+ name
				+ "','"
				+ description
				+ "','"
				+ accessfile
				+ "','"
				+ time
				+ "','"
				+ secret_key
				+ "','"
				+ pkey
				+ "','"
				+ status
				+ "','"
				+ downloadkey
				+ "','"
				+ content + "')";

		int x = st.executeUpdate(sql);
		if (x != 0) {
			String msg = "DataUser Email : " + email
					+ " Login to your Account";
			UserMail2 m = new UserMail2();
			m.secretMail2(downloadkey, email);

			response.sendRedirect("dataaccess_request.jsp?msg=Request_send_Successfully");

		} else {
			response.sendRedirect("attributkey.jsp?msgg=faild");

		}
	} catch (Exception e) {
		out.println(e);

	}
%>


