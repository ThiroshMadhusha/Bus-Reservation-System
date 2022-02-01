package com.reports;

public class Report {
	
	private int id;
	private String regNo;
	private String type;
	private String route;
	private String tripid;
	private String bookingid;
	private String price;
	private String seatno;
	private String facilities;
	private String company;
	private String password;
	
	public Report(int id, String regNo, String type, String route, String tripid, String bookingid, String price, String seatno, String facilities, String company, String password) {
		
		this.id = id;
		this.regNo = regNo;
		this.type = type;
		this.route = route;
		this.tripid = tripid;
		this.bookingid = bookingid;
		this.price = price;
		this.seatno = seatno;
		this.facilities = facilities;
		this.company = company;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getRegNo() {
		return regNo;
	}

	public String getType() {
		return type;
	}

	public String getRoute() {
		return route;
	}
	
	public String getTripid() {
		return tripid;
	}

	public String getBookingid() {
		return bookingid;
	}

	public String getPrice() {
		return price;
	}

	public String getSeatno() {
		return seatno;
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
