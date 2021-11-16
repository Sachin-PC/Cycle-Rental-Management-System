package io.crms.registration;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Registration {
	
	@Id
	private int id;
	private String studentId;
	private String name;
	private String emailAddress;
	private String mobileNumber;
	private String hostel;
	private String password;
	
	
	public Registration()
	{
		
	}


	public Registration(int id, String studentId, String name, String emailAddress, String mobileNumber, String hostel,
			String password) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.name = name;
		this.emailAddress = emailAddress;
		this.mobileNumber = mobileNumber;
		this.hostel = hostel;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getStudentId() {
		return studentId;
	}


	public void setStudentId(String studentId) {
		this.studentId = studentId;
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


	public String getHostel() {
		return hostel;
	}


	public void setHostel(String hostel) {
		this.hostel = hostel;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	

	
	



	
	

	
	
	

}
