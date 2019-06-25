/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Dbcon;



import java.sql.Connection;
import java.sql.DriverManager;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.minds.bean.Cloud;
import com.minds.bean.DataUser;
import com.minds.bean.Dataowner;
import com.minds.bean.Trusted;

/**
 *
 * @author Java4
 */
public class DbConnection {
    public static Connection getConnection()
    {
        Connection con = null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lightsecure", "root", "admin");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
    public static int save(Cloud u) {
		int status = 0;
		String duser = null, dpass = null;
		String user = u.getUsername();
		String Password = u.getPassword();

		try {
			DbConnection db = new DbConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into cloud (username, password) value (?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());

			String sql = "select * from cloud where username='" + user
					+ "' and password='" + Password + "'";
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				duser = rs.getString("username");
				dpass = rs.getString("password");
			}
			if (duser.equalsIgnoreCase(duser)
					&& (dpass.equalsIgnoreCase(dpass))) {
				status = 1;
			} else {
				status = 0;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int save(Trusted u) {
		int status = 0;
		String duser = null, dpass = null;
		String user = u.getUsername();
		String Password = u.getPassword();

		try {
			DbConnection db = new DbConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into ta (username, password) value (?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());

			String sql = "select * from ta where username='" + user
					+ "' and password='" + Password + "'";
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				duser = rs.getString("username");
				dpass = rs.getString("password");
			}
			if (duser.equalsIgnoreCase(duser)
					&& (dpass.equalsIgnoreCase(dpass))) {
				status = 1;
			} else {
				status = 0;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

    public static int Dataownerlogin(Dataowner u) {
    	int status = 0;
    	try {
    		Connection con = getConnection();
    		PreparedStatement ps = con.prepareStatement("insert into Dataowner(name, password) values(?,?)");

    		ps.setString(1, u.getName());
    		ps.setString(2, u.getPassword());

    		status = ps.executeUpdate();
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    	return status;
    }

    public static int Dataowner(Dataowner u){
    	int status=0;
    		try {
    			DbConnection db = new DbConnection();
    	      	Connection con = db.getConnection();
    	      	PreparedStatement ps=con.prepareStatement("insert into dataowner (name,password,omail,gender,dob,contactno,state,country,status) value(?,?,?,?,?,?,?,?)");
    		
    			ps.setString(1, u.getName());
    			ps.setString(2, u.getPassword());
    			ps.setString(3, u.getOmail());
    			ps.setString(4, u.getGender());
    			ps.setString(5, u.getDob());
    			ps.setString(6, u.getContactno());

    			ps.setString(7, u.getState());
    		
    			ps.setString(8, u.getCountry());
    		
    		  
    	     
    		    int i = ps.executeUpdate();
    			if(i!=0){
    				status=1;
    			}
    			else{
    				status=0;
    			}
    			

    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    		return status;
    	}







    public static int update(Dataowner u){
    	int status=0;
    	try{
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("update dataowner set name=?,password=?,omail=?,gender=?,dob=?,contactno=?,state=?,country=? where id=?");
    	
    		ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getOmail());
			ps.setString(4, u.getGender());
			ps.setString(5, u.getDob());
			ps.setString(6, u.getContactno());

			ps.setString(7, u.getState());
		
			ps.setString(8, u.getCountry());
    		
            ps.setInt(9, u.getId());
    		status=ps.executeUpdate();
    		System.out.println("status"+status);
    	}catch(Exception e){System.out.println(e);}
    	return status;
    }
    public static int delete(Dataowner u){
    	int status=0;
    	try{
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("delete from dataowner where id=?");
    		ps.setInt(1,u.getId());
    		status=ps.executeUpdate();
    	}catch(Exception e){System.out.println(e);}

    	return status;
    }



    public static List<Dataowner> getAllRecords(){
    	List<Dataowner> list=new ArrayList<Dataowner>();
    	
    	try{
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("select * from dataowner");
    		ResultSet rs=ps.executeQuery();
    		while(rs.next()){
    			Dataowner u=new Dataowner();
    			u.setId(rs.getInt("id"));
    		
    			u.setName(rs.getString("name"));
    			u.setPassword(rs.getString("password"));
    			u.setOmail(rs.getString("omail"));
    			u.setGender(rs.getString("gender"));
    			u.setDob(rs.getString("dob"));
    			u.setContactno(rs.getString("contactno"));
    			u.setState(rs.getString("state"));
    			u.setCountry(rs.getString("country"));
    			
    		
    			
    		
    			list.add(u);
    		}
    	}catch(Exception e){System.out.println(e);}
    	return list;
    }
    
    public static Dataowner getRecordById1(int id){
    	Dataowner u=null;
    	try{
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("select * from dataowner where id=?");
    		ps.setInt(1,id);
    		
    		ResultSet rs=ps.executeQuery();
    		while(rs.next()){
    		 u=new Dataowner();
    			u.setId(rs.getInt("id"));
    			
    			u.setName(rs.getString("name"));
    			u.setPassword(rs.getString("password"));
    			u.setOmail(rs.getString("omail"));
    			u.setGender(rs.getString("gender"));
    			u.setDob(rs.getString("dob"));
    			u.setContactno(rs.getString("contactno"));
    			u.setState(rs.getString("state"));
    			u.setCountry(rs.getString("country"));
    			
    				}
    	}catch(Exception e){System.out.println(e);}
    	return u;
    }
    public static Dataowner getRecordById(int id) {
    	Dataowner u = null;
    	try {
    		Connection con = getConnection();
    		PreparedStatement ps = con
    				.prepareStatement("select * from dataowner where omail=?");
    		ps.setInt(1, id);
    		ResultSet rs = ps.executeQuery();
    		while (rs.next()) {
    			u = new Dataowner();
    			u.setOmail(rs.getString("omail"));
    			u.setPassword(rs.getString("password"));

    		}
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    	return u;
    }


public static int DataUserLogin(DataUser u) {
	int status = 0;
	try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("insert into Datauser(email, password) values(?,?)");

		ps.setString(1, u.getEmail());
		ps.setString(2, u.getPassword());

		status = ps.executeUpdate();
	} catch (Exception e) {
		System.out.println(e);
	}
	return status;
}



public static int Userreg(DataUser u){  
	int status=0;
	try {
		DbConnection db = new DbConnection();
     	Connection con = db.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into datauser(name,password,email,dob,gender,state,country,contactno,fileaccessattribute,fileaccess) values(?,?,?,?,?,?,?,?,?,?)");  
    
        ps.setString(1, u.getName());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getGender());
		ps.setString(5, u.getDob());
		ps.setString(6, u.getState());
		ps.setString(7, u.getCountry());
		ps.setString(8, u.getContactno());
		ps.setString(9, u.getFileaccessattribute());
		ps.setString(10, u.getFileaccess());
		
	
	    ps.setInt(1, u.getId());
		  int i = ps.executeUpdate();
			if(i!=0){
				status=1;
			}
			else{
				status=0;
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}


public static List<DataUser> getAllRecords1(){
	List<DataUser> list=new ArrayList<DataUser>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from datauser");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			DataUser u=new DataUser();
			u.setId(rs.getInt("id"));
		
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setGender(rs.getString("gender"));
			u.setDob(rs.getString("dob"));
			u.setState(rs.getString("state"));
			u.setCountry(rs.getString("country"));
			u.setContactno(rs.getString("contactno"));
			u.setCountry(rs.getString("fileaccessattribute"));
			u.setCountry(rs.getString("fileaccess"));
			
		
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static DataUser getRecordById2(int id) {
	DataUser u = null;
	try {
		Connection con = getConnection();
		PreparedStatement ps = con
				.prepareStatement("select * from datauser where email=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			u = new DataUser();
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));

		}
	} catch (Exception e) {
		System.out.println(e);
	}
	return u;
}


}
