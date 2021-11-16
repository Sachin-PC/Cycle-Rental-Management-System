package io.crms.complaints;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="complaints")
public class Complaints {
	
	@Id
	private int complaint_id;
	private int cycleId;
	private String name;
	private String inCondition;
	private String complaint;
	
	public Complaints() {
		
	}
	
	
	public Complaints(int complaint_id, int cycleId, String name, String inCondition, String complaint) {
		super();
		this.complaint_id = complaint_id;
		this.cycleId = cycleId;
		this.name = name;
		this.inCondition = inCondition;
		this.complaint = complaint;
	}


	public int getComplaint_id() {
		return complaint_id;
	}


	public void setComplaint_id(int complaint_id) {
		this.complaint_id = complaint_id;
	}


	public int getCycleId() {
		return cycleId;
	}


	public void setCycleId(int cycleId) {
		this.cycleId = cycleId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getInCondition() {
		return inCondition;
	}


	public void setInCondition(String inCondition) {
		this.inCondition = inCondition;
	}


	public String getComplaint() {
		return complaint;
	}


	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}
	
	
	
	
	

}
