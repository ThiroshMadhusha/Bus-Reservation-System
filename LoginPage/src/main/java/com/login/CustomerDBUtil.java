package com.login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.login.Customer;
import com.login.DBConnect;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName, String password){
		
		
		try {
			
		
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			//Write SQL Query in my table 			
			String sql = "select * from customer where usename='"+userName +"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
						
		}		
		catch(Exception e) {
			e.printStackTrace();
		}		
		//Assign Customer class variables
		
		return isSuccess;
	}
	
public static List<Customer> getCustomer(String userName){
		
		ArrayList<Customer> customer = new ArrayList<>();
		//Validate using try catch block
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			//Write SQL Query in my table 			
			String sql = "select * from customer where usename='"+userName +"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				//
				Customer cus1 = new Customer(id, name, email, phone, userU, passU);
				
				//
				customer.add(cus1);
			}
						
		}		
		catch(Exception e) {
			e.printStackTrace();
		}		
		//Assign Customer class variables
		
		return customer;
	}
	
}
	