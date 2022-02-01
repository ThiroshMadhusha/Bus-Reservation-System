package servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	//Create Database Connection
	
	private static String url = "jdbc:mysql://localhost:3306/camp";
	private static String username = "root";
	private static String pw = "2057060";
	private static Connection con;
	
	public static Connection getConnection(){
		
		try {	
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, pw);	
			
		}		
		catch(Exception e) {
			System.out.println("Database Connection is not Successfull");
		}
		return con;
	}

}
