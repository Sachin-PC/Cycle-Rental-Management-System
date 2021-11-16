package io.crms.cycles;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cycle {
	
	@Id
	private int id;
	private String name;
	private String brand;
	private String type;
	private String genderType;
	private String inBhavan;
	private String inCondition;
	private String inUse;
	
	public Cycle() {
		//super();
	}

	public Cycle(int id, String name, String brand, String type, String genderType, String inBhavan,
			String inCondition, String inUse) {
		super();
		this.id = id;
		this.name = name;
		this.brand = brand;
		this.type = type;
		this.genderType = genderType;
		this.inBhavan = inBhavan;
		this.inCondition = inCondition;
		this.inUse = inUse;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGenderType() {
		return genderType;
	}

	public void setGenderType(String genderType) {
		this.genderType = genderType;
	}

	public String getInBhavan() {
		return inBhavan;
	}

	public void setInBhavan(String inBhavan) {
		this.inBhavan = inBhavan;
	}

	public String getInCondition() {
		return inCondition;
	}

	public void setInCondition(String inCondition) {
		this.inCondition = inCondition;
	}

	public String getInUse() {
		return inUse;
	}

	public void setInUse(String inUse) {
		this.inUse = inUse;
	}

	

	

}
