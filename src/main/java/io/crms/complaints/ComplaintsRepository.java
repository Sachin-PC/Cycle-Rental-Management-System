package io.crms.complaints;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


public interface ComplaintsRepository extends CrudRepository<Complaints, Integer>{

	List<Complaints> findBycycleId(int cycleId);
	
	

}
