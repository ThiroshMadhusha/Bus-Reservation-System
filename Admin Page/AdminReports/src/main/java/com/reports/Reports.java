package com.reports;

public class Reports {
	
	private int reportid;
	private String regno;
	private String type;
	private String route;
	private String tripID;
	private String bookingID;
	private String price;
	private String seatNo;
	private String facilities;
	private String company;
	private String password;
	
	public Reports(int reportid, String regno, String type, String route, String tripID, String bookingID, String price, String seatNo, String facilities, String company, String password) {
		
		this.reportid = reportid;
		this.regno = regno;
		this.type = type;
		this.route = route;
		this.tripID = tripID;
		this.bookingID = bookingID;
		this.price = price;
		this.seatNo = seatNo;
		this.facilities = facilities;
		this.company = company;
		this.password = password;
	}

	public int getReportid() {
		return reportid;
	}

	public String getRegno() {
		return regno;
	}

	public String getType() {
		return type;
	}

	public String getRoute() {
		return route;
	}
	
	public String getTripID() {
		return tripID;
	}

	public String getBookingID() {
		return bookingID;
	}

	public String getPrice() {
		return price;
	}

	public String getSeatNo() {
		return seatNo;
	}
	
	public String getFacilities() {
		return facilities;
	}

	public String getCompany() {
		return company;
	}

	public String getPassword() {
		return password;
	}
	

}
