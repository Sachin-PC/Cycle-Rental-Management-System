package io.crms.complaints;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.crms.cycles.Cycle;

@Service
@Transactional
public class ComplaintsService {
	
	@Autowired
	private ComplaintsRepository complaintsRepository;
	
	public void addComplaint(Complaints complaint)
	{
		complaintsRepository.save(complaint);
	}
	
	public void deleteComplaint(int complaint_id)
	{
		complaintsRepository.deleteById(complaint_id);
	}
	
	
	public List<Complaints> getComplaintsByCycleId(int cycleId)
	{
		List<Complaints> complaints = new ArrayList<>();
		complaintsRepository.findBycycleId(cycleId).forEach(complaints::add);
		int x=0;
		System.out.println("Now checking");
		List<Complaints> temp = new ArrayList<>();
		for(Complaints t:complaintsRepository.findBycycleId(cycleId))
		{
			x = 1;
			System.out.println(t.getComplaint_id() + t.getCycleId() + t.getInCondition());
		}
		System.out.println("x = "+x);
		System.out.println("cycles list = "+complaints.size());
		return complaints;
	}
	
	public Optional<Complaints> getComplaintsById(int id)
	{
		Optional<Complaints> complaints;
		complaints = complaintsRepository.findById(id);
		return complaints;
		
	}

}
