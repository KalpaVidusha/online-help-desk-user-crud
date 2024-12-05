package com.customer;

public class Customer {
	private int cusId;
	private String cusFname;
	private String cusLname;
	private String cusEmail;
	private String cusPhone;
	private String cusUsername;
	private String cusPassword;
	
	public Customer(int cusId, String cusFname, String cusLname, String cusEmail, String cusPhone, String cusUsername, String cusPassword) {
		this.cusId = cusId;
		this.cusFname = cusFname;
		this.cusLname = cusLname;
		this.cusEmail = cusEmail;
		this.cusPhone = cusPhone;
		this.cusUsername = cusUsername;
		this.cusPassword = cusPassword;
	}

	public int getCusId() {
		return cusId;
	}

	public String getcusFname() {
		return cusFname;
	}
	
	public String getcusLname() {
		return cusLname;
	}

	public String getCusEmail() {
		return cusEmail;
	}

	public String getCusPhone() {
		return cusPhone;
	}

	public String getCusUsername() {
		return cusUsername;
	}

	public String getCusPassword() {
		return cusPassword;
	}

	
}