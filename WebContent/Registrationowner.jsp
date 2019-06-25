
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	//    int pass = Integer.parseInt(request.getParameter("pass"));
	String omail = request.getParameter("omail");
	String gender = request.getParameter("gender");
	String dob = request.getParameter("dob");
	String contactno = request.getParameter("contactno");
	String state = request.getParameter("state");
	String country = request.getParameter("country");
	String status = "waiting";

	System.out.println("print value :" + name + omail + password
			+ gender + dob + contactno + state + country + status);
	Connection conn = DbConnection.getConnection();
	Statement sto = conn.createStatement();
	try {

		int i = sto
				.executeUpdate("insert into dataowner(name,password,omail,gender,dob,contactno,state,country,status)values('"
						+ name
						+ "','"
						+ password
						+ "','"
						+ omail
						+ "','"
						+ gender
						+ "','"
						+ dob
						+ "','"
						+ contactno
						+ "','"
						+ state
						+ "','"
						+ country
						+ "', '" + status + "')");
		if (i != 0) {
			System.out.println("success");
			response.sendRedirect("ologin.jsp");
		} else {
			System.out.println("failed");
		}

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>

