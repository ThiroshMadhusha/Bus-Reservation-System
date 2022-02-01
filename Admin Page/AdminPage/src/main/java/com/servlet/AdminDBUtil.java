package com.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	public static List<Admin> validate(String userName, String password){
		
		ArrayList<Admin> adm = new ArrayList<>();
		
		//Create Database Connection
		String url = "jdbc:mysql://localhost:3306/bussystem";
		String user = "root";
		String pass = "2057060";
		
		//Validate data 
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from admin where username='"+userName+"' and password='"+password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String userA = rs.getString(4);
				String passA = rs.getString(5);
				
				Admin a = new Admin(id, name, email, userA, passA);
				
				adm.add(a);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();	
		}
		
		
		return adm;
		
	}
	
	//AdminInsert Servlet Class 
	public static boolean insertadmin(String name, String email, String username, String password) {
		
		boolean isSuccess = false;
		
		//Create database Connection
		String url = "jdbc:mysql://localhost:3306/bussystem";
		String user = "root";
		String pass = "2057060";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into admin values (0,'"+name+"','"+email+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

}
