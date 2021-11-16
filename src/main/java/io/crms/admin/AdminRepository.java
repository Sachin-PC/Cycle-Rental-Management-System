package io.crms.admin;

import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<Admin, Integer > {
	
	public Admin findByadminIdAndPassword( String adminId, String password);

}
