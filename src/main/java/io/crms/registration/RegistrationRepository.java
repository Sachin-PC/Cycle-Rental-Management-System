package io.crms.registration;

import org.springframework.data.repository.CrudRepository;

public interface RegistrationRepository extends CrudRepository<Registration, Integer > {
	
	public Registration findBystudentIdAndPassword( String studentId, String password);

}
