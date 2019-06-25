<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="algorithm.Mail"%>
<%@ page import="java.sql.*"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>

<%@page import="java.security.SecureRandom"%>
<%
	try {

		String url = "jdbc:mysql://localhost:3306/lightsecure";
		String user = "root";
		String password = "admin";
		Connection conn = DriverManager.getConnection(url, user,
				password);

		String id = request.getParameter("id");
		int id1 = Integer.valueOf(id);

		String name = request.getParameter("name");
		String omail = request.getParameter("omail");

		String status = "Granted";
		String secret_key = "";
		Random RANDOM = new SecureRandom();
		int PASSWORD_LENGTH = 10;
		String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";

		for (int i = 0; i < PASSWORD_LENGTH; i++) {
			int index = (int) (RANDOM.nextDouble() * letters.length());
			secret_key += letters.substring(index, index + 1);
			System.out.println(secret_key);
		}
		String pkey = "";
		Random RANDOM1 = new SecureRandom();
		int PASSWORD_LENGTH1 = 20;
		String letters1 = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";

		for (int i = 0; i < PASSWORD_LENGTH1; i++) {
			int index1 = (int) (RANDOM1.nextDouble() * letters1
					.length());
			pkey += letters1.substring(index1, index1 + 1);
			System.out.println(pkey);
		}
		String j = request.getQueryString();
		Connection con = DbConnection.getConnection();
		Statement st = con.createStatement();

		String sql = "insert into request(oid,name,omail,status,secret_key,pkey) values ("
				+ id1
				+ ",'"
				+ name
				+ "','"
				+ omail
				+ "','"
				+ status
				+ "','" + secret_key + "','" + pkey + "')";

		int x = st.executeUpdate(sql);
		if (x != 0) {
			String msg = "Dataowner Email : " + omail
					+ " Login to your Account";
			Mail m = new Mail();
			m.secretMail(secret_key, pkey, name, omail);

			response.sendRedirect("TA_Home.jsp?msg=Request_send_Successfully");

		} else {
			response.sendRedirect("publickeyreq.jsp?msgg=faild");

		}
	} catch (Exception e) {
		out.println(e);

	}
%>


