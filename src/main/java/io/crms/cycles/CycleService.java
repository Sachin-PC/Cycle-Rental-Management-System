package io.crms.cycles;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CycleService {
	
	@Autowired
	private CycleRepository cycleRepository;
	
	@Autowired
	private CycleJPARepository cycleJpaRepository;
	
	
	public List<Cycle> getAllCycles()
	{
		List<Cycle> cycles = new ArrayList<>();
		cycleRepository.findAll().forEach(cycles::add);
		return cycles;
	}
	
	public void addCycle(Cycle cycle)
	{
		cycleRepository.save(cycle);
	}
	
	public void deleteCycle(int id)
	{
		cycleRepository.deleteById(id);
	}
	
	public boolean getCycleById(int id)
	{
		Optional<Cycle> cycle;
		cycle = cycleRepository.findById(id);
		if(cycle.isPresent())
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public List<Cycle> getCyclesByBhavanAndGenderTypeAndInUseAndInCondition(String bhavan ,String genderType, String inUse, String inCondition)
	{
		List<Cycle> cycles = new ArrayList<>();
		cycleRepository.findByinBhavanAndGenderTypeAndInUseAndInCondition(bhavan , genderType , inUse, inCondition).forEach(cycles::add);
		int x=0;
		System.out.println("Now checking");
		List<Cycle> temp = new ArrayList<>();
		for(Cycle t:cycleRepository.findByinBhavanAndGenderTypeAndInUseAndInCondition(bhavan, genderType , inUse, inCondition))
		{
			x = 1;
			System.out.println(t.getBrand() + t.getGenderType() + t.getInBhavan());
		}
		System.out.println("x = "+x);
		System.out.println("cycles list = "+cycles.size());
		return cycles;
	}
	
	public Optional<Cycle> FindCycle(int id)
	{
		Optional<Cycle> cycle;
		cycle = cycleRepository.findById(id);
		return cycle;
	}

}
