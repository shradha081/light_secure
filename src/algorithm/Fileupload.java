package algorithm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Fileupload
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dbcon.DbConnection;

import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)
// upload file's size up to 16MB
public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	File file;
	final String filepath = "D:\\";

	public Fileupload() {
		super();
	
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			request.getSession();

			MultipartRequest m = new MultipartRequest(request, filepath);
			File file = m.getFile("file");
			System.out.println("file");

			
			String name = m.getParameter("name");
			String omail = m.getParameter("omail");
			String description = m.getParameter("description");
			Random RANDOM1 = new SecureRandom();
			int PASSWORD_LENGTH1 = 10;
			String letters1 = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
			String pkey = "";

			for (int i = 0; i < PASSWORD_LENGTH1; i++) {
				int index1 = (int) (RANDOM1.nextDouble() * letters1.length());
				pkey += letters1.substring(index1, index1 + 1);
				System.out.println("pkey :" + pkey);
			}
			Random RANDOM2 = new SecureRandom();
			int PASSWORD_LENGTH2 = 10;
			String letters2 = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
			String downloadkey = "";

			for (int i = 0; i < PASSWORD_LENGTH2; i++) {
				int index2 = (int) (RANDOM2.nextDouble() * letters1.length());
				downloadkey += letters2.substring(index2, index2 + 1);
				System.out.println("downloadkey :" + downloadkey);
			}
			String accessfile = m.getParameter("accessfile");

			/* String content= m.getParameter("content"); */
			String filename = file.getName().toLowerCase();
			System.out.println("File name" + filename);
			Connection con = DbConnection.getConnection();
			Statement st3 = con.createStatement();
			ResultSet rt3 = st3
					.executeQuery("select * from upload where filename='"
							+ filename + "'");
			if (rt3.next()) {
				response.sendRedirect("uploadfile.jsp?failed='yes'");
			} else {
				

				BufferedReader br = new BufferedReader(new FileReader(filepath
						+ filename));
				StringBuffer sb = new StringBuffer();
				String temp = null;

				while ((temp = br.readLine()) != null) {
					sb.append(temp);
				}
				// Secret Key
				CpABE e = new CpABE();
				String IBE = e.encrypt(sb.toString());

				// storing encrypted file
				FileWriter fw = new FileWriter(file);
				fw.write(IBE);
				fw.close();
				System.out.println("string Buffer" + IBE);

				// Secret Key
				Random RANDOM = new SecureRandom();
				int PASSWORD_LENGTH = 10;
				String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
				String secret_key = "";

				for (int i = 0; i < PASSWORD_LENGTH; i++) {
					int index = (int) (RANDOM.nextDouble() * letters.length());
					secret_key += letters.substring(index, index + 1);
					System.out.println("Secret Key:" + secret_key);
				}

				CpABE e1 = new CpABE();
				String edescription = e1.encrypt(description);
				System.out.println("string Buffer" + edescription);

				CpABE e2 = new CpABE();
				String eaccessfile = e2.encrypt(accessfile);
				System.out.println("string Buffer" + eaccessfile);

				// Trapdoor Key Code..........................................
				KeyGenerator Attrib_key = KeyGenerator.getInstance("AES");
				Attrib_key.init(128);
				SecretKey Trapdoorkey = Attrib_key.generateKey();
				System.out.println("++++++++ key:" + Trapdoorkey);

				byte[] b = Trapdoorkey.getEncoded();
				String trapkey = Base64.encode(b);
				System.out.println("converted secretkey to string:" + trapkey);
				// Trapdoor Key Code..........................................

				// Secret Key
				// date and Time
				DateFormat dateFormat = new SimpleDateFormat(
						"yyyy.MM.dd G 'at' HH:mm:ss ");
				Date date = new Date();
				String time = dateFormat.format(date);
				System.out.println("current Date " + time);

				file.length();

				// uploading file
				
				boolean status = new Ftpcon().upload(file);

				if (status) {
					Connection con1 = DbConnection.getConnection();
					Statement st = con1.createStatement();

					int i = st
							.executeUpdate("insert into upload(filename,description,pkey,accessfile,content,time,secret_key,trapdoorkey,status,edesciption,eaccessfile,name,omail,downloadkey)values('"+ file.getName() + "','" + description + "','" + pkey+ "','"+ accessfile+ "','" + IBE + "','" + time + "','" + secret_key + "','" + trapkey + "','No','" + edescription + "','"+ eaccessfile+ "','"+ name+ "','"+ omail+ "','"+downloadkey+"')");
					System.out.println(i);
					if (i != 0) {
						// out.println("success");
						response.sendRedirect("viewuploadowner.jsp?status='uploded'");

					} else {
						out.println("error while uploading additional informations");
					}
					out.println("file stored");
					out.println(file.length());
				} else {
					out.println("error");
				}
			}
		} catch (Exception e) {
			out.println(e);
		} finally {
			out.close();
		}
	}

	

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}
