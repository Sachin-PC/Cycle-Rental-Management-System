package io.crms.complaints;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import io.crms.cycles.Cycle;
import io.crms.cycles.CycleService;

@Controller
public class ComplaintsController {
	
	@Autowired 
	private ComplaintsService complaintsService;
	
	@Autowired 
	private CycleService cycleService;
	
	@RequestMapping("/addComplaints")
	public String addComplaint(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_ADDCOMPLAINT");
		return "complaints";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/home-comp")
	public String add_newComplaint(@ModelAttribute Complaints complaint, BindingResult bindingResult , HttpServletRequest request)
	{
		Optional<Cycle> cyc;
		Cycle cycle;
		int cycleId = 0;
		String cycleName;
		String inCondition;
		cycleId = complaint.getCycleId();
		cyc = cycleService.FindCycle(cycleId);
		if(cyc.isPresent())
		{
			//return true;
			//complaint.se
			cycle = cyc.get();
			complaint.setName(cycle.getName());
			complaint.setInCondition(cycle.getInCondition());
			complaintsService.addComplaint(complaint);
			return "home";
		}
		else
		{
			request.setAttribute("error", "No Cycle is present with the given cycle Id");
			request.setAttribute("mode","MODE_ADDCOMPLAINT");
			return "complaints";
		}
	}
	
	@RequestMapping("/viewComplaints")
	public String view_complaints(@RequestParam int id, HttpServletRequest request)
	{
		/*Optional<Cycle> cyc = null;
		/*cyc = cycleService.FindCycle(id);
		Cycle cycle;
		cycle = cyc.get();*/
		System.out.println("NOOOOOOOOO");
		List<Complaints> complaints_list = complaintsService.getComplaintsByCycleId(id);
		
		if( complaints_list.size()== 0)
		{
			//String bh = cycle.getInBhavan();
			//String gt = cycle.getGenderType();
			//System.out.println(cycle.getInBhavan());
			//System.out.println(cycle.getGenderType());
			request.setAttribute("error", "No complaints present for this Cycle");
			//request.setAttribute("mode","MODE_LOGIN");
			request.setAttribute("mode","MODE_VIEWCYCLES");
		    request.setAttribute("allCycles", cycleService.getAllCycles());
			return "bookcycle";
			
			//return "New2";
		}
		else
		{
			request.setAttribute("mode","MODE_VIEWCOMPLAINTS");
			request.setAttribute("compl", complaintsService.getComplaintsByCycleId(id));
			return "complaintsList";
		}
	}
	
	@RequestMapping("/enableCycle")
	public String enable_cycle(@RequestParam int id, HttpServletRequest request)
	{
		int i=0;
		Cycle cycle;
		Optional<Cycle> cyc;
		cyc = cycleService.FindCycle(id);
		cycle = cyc.get();
		cycle.setInCondition("1");
		cycleService.addCycle(cycle);
		List<Complaints> complaints_list = complaintsService.getComplaintsByCycleId(id);
		for(i=0;i<complaints_list.size();i++)
		{
			complaints_list.get(i).setInCondition("1");
			complaintsService.addComplaint(complaints_list.get(i));
		}
		request.setAttribute("mode","MODE_VIEWCOMPLAINTS");
		request.setAttribute("compl", complaintsService.getComplaintsByCycleId(id));
		return "complaintsList";
	}
	
	
	@RequestMapping("/disableCycle")
	public String disable_cycle(@RequestParam int id, HttpServletRequest request)
	{
		Cycle cycle;
		Optional<Cycle> cyc;
		int i=0;
		cyc = cycleService.FindCycle(id);
		cycle = cyc.get();
		cycle.setInCondition("0");
		cycleService.addCycle(cycle);
		List<Complaints> complaints_list = complaintsService.getComplaintsByCycleId(id);
		for(i=0;i<complaints_list.size();i++)
		{
			complaints_list.get(i).setInCondition("0");
			complaintsService.addComplaint(complaints_list.get(i));
		}
		request.setAttribute("mode","MODE_VIEWCOMPLAINTS");
		request.setAttribute("compl", complaintsService.getComplaintsByCycleId(id));
		
		return "complaintsList";
	}
	
	@RequestMapping("/deleteComment")
	public String delete_comment(@RequestParam int id,HttpServletRequest request)
	{
		Optional<Complaints> comp;
		Complaints complaint;
		int cycleId=0;
		comp = complaintsService.getComplaintsById(id);
		complaint = comp.get();
		
		cycleId = complaint.getCycleId();
		complaintsService.deleteComplaint(id);
		
		request.setAttribute("mode","MODE_VIEWCOMPLAINTS");
		request.setAttribute("compl", complaintsService.getComplaintsByCycleId(cycleId));
		
		return "complaintsList";
	}

}
