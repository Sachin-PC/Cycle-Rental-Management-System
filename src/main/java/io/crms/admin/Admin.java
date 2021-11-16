package io.crms.admin;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	
	@Id
	private int id;
	private String adminId;
	private String name;
	private String emailAddress;
	private String mobileNumber;
	private String password;
	
	
	public Admin()
	{
		
	}
	
	


	public Admin(int id, String adminId, String name, String emailAddress, String mobileNumber, String password) {
		super();
		this.id = id;
		this.adminId = adminId;
		this.name = name;
		this.emailAddress = emailAddress;
		this.mobileNumber = mobileNumber;
		this.password = password;
	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getAdminId() {
		return adminId;
	}


	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmailAddress() {
		return emailAddress;
	}


	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}


	public String getMobileNumber() {
		return mobileNumber;
	}


	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
