package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDbUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where cusUsername ='"+username+"'and cusPassword = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return  isSuccess;
	}
	
	public static List<Customer> getCustomer(String username){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where cusUsername ='"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int cusId = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String userN = rs.getString(6);
				String pass = rs.getString(7);
				
				Customer cus = new RegisteredCustomer(cusId, fname, lname, email, phone, userN, pass);
				customer.add(cus);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return customer;
	}
	
	
	public static List<Customer> validate1(String cusUsername, String cusPassword){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//validate
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where cusUsername ='"+cusUsername+"'and cusPassword = '"+cusPassword+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {	//boolean method
				int cusId = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String userN = rs.getString(6);
				String pass = rs.getString(7);
				
				Customer c = new Customer(cusId, fname, lname, email, phone, userN, pass);
				cus.add(c);
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		return cus;
	}
	
	public static boolean insertcustomer(String fName, String lName, String email, String phone, String userName, String password ) {
		
		boolean isSuccess = false;
		
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values(0, '"+fName+"', '"+lName+"', '"+email+"', '"+phone+"', '"+userName+"', '"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
	
	public static boolean updatecustomer(String id, String fName, String lName, String email, String phone, String userName, String password) {
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE customer SET cusFname='" + fName + "', cusLname='" + lName + "', cusEmail='" + email + "', cusPhone='" + phone + "', cusUsername='" + userName + "', cusPassword='" + password + "'"
							+ "WHERE cusId='" + id + "'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetail(String id) {
	    int convertedID = Integer.parseInt(id);
	    ArrayList<Customer> cus = new ArrayList<>();
	    try {
	        con = DBconnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM customer WHERE cusId = " + convertedID;
	        rs = stmt.executeQuery(sql);
	        while (rs.next()) {
	            int cusId = rs.getInt(1);
	            String fname = rs.getString(2);
	            String lname = rs.getString(3);
	            String email = rs.getString(4);
	            String phone = rs.getString(5);
	            String userN = rs.getString(6);
	            String pass = rs.getString(7);
	            Customer c = new Customer(cusId, fname, lname, email, phone, userN, pass);
	            cus.add(c);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return cus;
	}
	
	public static boolean deleteCustomer(String id) {
		
		int convertID = Integer.parseInt(id);
		
		try {
			
			con = DBconnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "delete from customer where cusId ='"+convertID+"'";
	        int r = stmt.executeUpdate(sql);
	        
	        if(r > 0) {
	        	isSuccess = true;
	        }
	        else {
	        	isSuccess = true;
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}


}
