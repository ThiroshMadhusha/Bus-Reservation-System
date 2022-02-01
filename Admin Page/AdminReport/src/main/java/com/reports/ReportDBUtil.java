package com.reports;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ReportDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String regno, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from report where regno='"+regno+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Report> getReport(String regNo) {
		
		ArrayList<Report> report = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from report where regno='"+regNo+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String regno = rs.getString(2);
				String type = rs.getString(3);
				String route = rs.getString(4);
				String tripid = rs.getString(5);
				String bookingid = rs.getString(6);
				String price = rs.getString(7);
				String seatno = rs.getString(8);
				String facilities = rs.getString(9);
				String company = rs.getString(10);
				String password = rs.getString(11);
				
				Report rep = new Report(id,regno,type,route,tripid,bookingid,price,seatno,facilities,company,password);
				report.add(rep);
			}
			
		} catch (Exception e) {
			
		}
		
		return report;	
	}
    
    public static boolean insertreport(String regno, String type, String route, String tripid, String bookingid, String price, String seatno, String facilities, String company, String password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into customer values (0,'"+regno+"','"+type+"','"+route+"','"+tripid+"','"+bookingid+"','"+price+"','"+seatno+"','"+facilities+"','"+company+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatereport(String id, String regno, String type, String route, String tripid, String bookingid, String price, String seatno, String facilities, String company, String password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update report set regno='"+regno+"',type='"+type+"',route='"+route+"',tripid='"+tripid+"',bookingid='"+bookingid+"',price='"+price+"',seatno='"+seatno+"',facilities='"+facilities+"',company='"+company+"',password='"+password+"'"
    				+ "where id='"+id+"'";
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
 
    public static List<Report> getReportDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Report> rep = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from report where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String regno = rs.getString(2);
    			String type = rs.getString(3);
    			String route = rs.getString(4);
    			String tripid = rs.getString(5);
    			String bookingid = rs.getString(6);
    			String price = rs.getString(7);
    			String seatno = rs.getString(8);
    			String facilities = rs.getString(9);
    			String company = rs.getString(10);
    			String password = rs.getString(11);
    			Report c = new Report(id,regno,type,route,tripid,bookingid,price,seatno,facilities,company,password);
    			rep.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return rep;	
    }
    
    
    public static boolean deleteReport(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from report where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
