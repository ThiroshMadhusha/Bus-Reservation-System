package com.reports;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	public static List<Reports> validate(String regno, String password){
		
		ArrayList<Reports> rep = new ArrayList<>();
		
		
		//Create Database Connection
		String url = "jdbc:mysql://localhost:3306/adminreport";
		String user = "root";
		String pass = "2057060";
		
		//Validate 
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from reports where regno = '"+regno+"' and password = '"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String regino = rs.getString(2);
				String type = rs.getString(3);
				String route = rs.getString(4);
				String tripID = rs.getString(5);
				String bID = rs.getString(6);
				String price = rs.getString(7);
				String seatNo = rs.getString(8);
				String facility = rs.getString(9);
				String company = rs.getString(10);
				String passU = rs.getString(11);
				
				Reports c = new Reports(id,regino,type,route,tripID,bID,price,seatNo,facility,company, passU);
				rep.add(c);
				
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return rep;
		
	}
	//ReportInsert Servlet Class
	public static boolean insertreports(String regno,String type,String route,String tripID,String bookingID,String price,String seatNo,String facilities,String company,String password) {
		
		boolean isSuccess = false;

		//Create database Connection
		String url = "jdbc:mysql://localhost:3306/adminreport";
		String user = "root";
		String pass = "2057060";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into reports values(0,'"+regno+"','"+type+"','"+route+"','"+tripID+"','"+bookingID+"','"+price+"','"+seatNo+"','"+facilities+"','"+company+"','"+password+"')";
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
