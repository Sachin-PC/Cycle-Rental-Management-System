package io.crms.cycles;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CycleJPARepository extends JpaRepository<Cycle,String>{
	
	/*@Query("select u from cycle where cycle_in_bhavan = ?1")
	 List<Cycle> findyCycle_InBhavan(String bhavan);*/

}
