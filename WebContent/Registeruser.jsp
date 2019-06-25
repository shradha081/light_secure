<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="algorithm.UserMail"%>
<%@page import="java.util.Random"%>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%@ page session="true"%>


<%
	/*    String id = null; */

	String uname = request.getParameter("uname");
	session.setAttribute("uname", uname);
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	session.setAttribute("email", email);
	String gender = request.getParameter("gender");
	String dob = request.getParameter("dob");
	String contactno = request.getParameter("contactno");
	String fileaccess = request.getParameter("fileaccess");
	String state = request.getParameter("state");
	String country = request.getParameter("country");
	String fileaccessattribute = request
			.getParameter("fileaccessattribute");
	String status = "waiting";
	String secret_key = "";
	Random RANDOM = new SecureRandom();
	int PASSWORD_LENGTH = 10;
	String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";

	for (int i = 0; i < PASSWORD_LENGTH; i++) {
		int index = (int) (RANDOM.nextDouble() * letters.length());
		secret_key += letters.substring(index, index + 1);
		System.out.println(secret_key);
	}

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection co = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/lightsecure", "root",
				"admin");

		PreparedStatement ps = co
				.prepareStatement("insert into datauser(uname,password,email,gender,dob,state,country,contactno,fileaccessattribute,fileaccess,status,secret_key) values(?,?,?,?,?,?,?,?,?,?,?,?)");

		ps.setString(1, uname);
		ps.setString(2, password);
		ps.setString(3, email);
		ps.setString(4, gender);
		ps.setString(5, dob);

		ps.setString(6, state);
		ps.setString(7, country);
		ps.setString(8, contactno);
		ps.setString(9, fileaccessattribute);
		ps.setString(10, fileaccess);

		ps.setString(11, status);

		ps.setString(12, secret_key);

		int i = ps.executeUpdate();
		if (i > 0) {
			out.println("Registered Sucessfully");

			String msg = "DataUser Email : " + email + " \nPassword : "
					+ password + "\nMessage  :Login to your Account";
			UserMail m = new UserMail();
			m.secretMail(secret_key, uname, email);

			response.sendRedirect("ureg.jsp?msg=success");
			out.println("User Registered Successfully");
		} else {
			response.sendRedirect("adddoctor.jsp?msg1=failed");
		}
	} catch (Exception e1) {
		System.out.println(e1);
		out.println(e1.getMessage());
	}
%>



