package io.crms.cycles;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface CycleRepository extends CrudRepository<Cycle,Integer>{
	
	List<Cycle> findByinBhavanAndGenderTypeAndInUseAndInCondition(String bhavan , String genderType , String inUse, String inCondition);

	

}
