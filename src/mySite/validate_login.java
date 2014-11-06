package mySite;

import java.io.InputStream;
import java.sql.*;

public class validate_login {

	
	public static String checkUser(String login_name, String password) {
	String state = "noaccess";
	Connection con =null;
	try {
	//loading driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connecting to DB
	con=DriverManager.getConnection("jdbc:mysql://10.203.98.40:3306/mySiteDB","panneer","Compaq123");
PreparedStatement ps = con.prepareStatement("select * from mySite_Users where login_name=? and password=SHA(?)");
	ps.setString(1, login_name);
	ps.setString(2, password);
	ResultSet rs = ps.executeQuery();
	
	if (rs.next()){
		String sqlout1 = rs.getString("role");
		if (sqlout1 != null) {
			state = sqlout1;			
		}else {
			state = "noaccess";
			}
		
		}
		
	}catch(Exception e)
	{
	e.printStackTrace();
	}finally {
				if (con != null)
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		}	
	
		return state;
	
		
   }
}