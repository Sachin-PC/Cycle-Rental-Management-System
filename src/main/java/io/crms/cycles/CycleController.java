package io.crms.cycles;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class CycleController {
	
	@Autowired
	private CycleService cycleService;
	
	@RequestMapping("/Cycles")
	public List<Cycle> getAllCycles()
	{
		return cycleService.getAllCycles();
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/Cycles")
	public String addCycle(@RequestBody Cycle cycle)
	{
		int cycle_id = cycle.getId();
		
		if(cycleService.getCycleById(cycle_id))
		{
			return " A cycle is already present with the same Id";
		}
		else
		{
			cycleService.addCycle(cycle);
			return "Cycle Added Succesfully";
		}
		//return "Should Define";
	}
	
	@RequestMapping("/Cycles/{bhavan}/{genderType}")
	public List<Cycle> getCyclesByInUse(@PathVariable String bhavan, @PathVariable String genderType)
	{
		return cycleService.getCyclesByBhavanAndGenderTypeAndInUseAndInCondition(bhavan,genderType ,"1","1");
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/selectcycle")
	public String displayCycles(@ModelAttribute Cycle cycle , BindingResult bindingResult , HttpServletRequest request)
	{
		
		
		List<Cycle> cycles_list = cycleService.getCyclesByBhavanAndGenderTypeAndInUseAndInCondition(cycle.getInBhavan(),cycle.getGenderType(),"0","1");
		if( cycles_list.size()== 0)
		{
			//String bh = cycle.getInBhavan();
			//String gt = cycle.getGenderType();
			//System.out.println(cycle.getInBhavan());
			//System.out.println(cycle.getGenderType());
			request.setAttribute("error", "No cycle available. Please select a different requirement");
			//request.setAttribute("mode","MODE_LOGIN");
			return "home";
			
			//return "New2";
		}
		else
		{
			request.setAttribute("mode","MODE_SELECTCYCLE");
			request.setAttribute("cycles", cycleService.getCyclesByBhavanAndGenderTypeAndInUseAndInCondition(cycle.getInBhavan(),cycle.getGenderType(), "0","1"));
			return "bookcycle";
		}
	}
	
	@RequestMapping("/genotp")
	public String startCounter(@RequestParam int id, HttpServletRequest request)
	{
		Optional<Cycle> cycle = null;
		cycle = cycleService.FindCycle(id);
		Cycle cs;
		cs = cycle.get();
		System.out.println("Cycle old loc = "+cs.getInBhavan());
		
		cs.setInUse("1");
		System.out.println("Cycle new loc = "+cs.getInBhavan());
		cycleService.addCycle(cs);
		
		
		System.out.println("NOOOOOO "+id);
		request.setAttribute("mode","MODE_GETOTP");
		request.setAttribute("cycleid", id);
		return "checkotp";
	}
	
	@RequestMapping("/trip")
	public String startTrip(@RequestParam String id , HttpServletRequest request)
	{
		System.out.println("YESSSSSSSS "+id);
		//request.setAttribute("mode","MODE_GETOTP");
		request.setAttribute("cycleid1", id);
		return "timer";
	}
	
	@RequestMapping("/home")
	public String UserHomepage(@RequestParam int id , @RequestParam String location)
	{
		Optional<Cycle> cycle = null;
		int x=0;
		if(location.equals("undefined"))
		{
			x = 1;
		}
		if(id!= 0)
		{
			cycle = cycleService.FindCycle(id);
			Cycle cs;
			cs = cycle.get();
			
			cs.setInUse("0");
			
			if(x == 0)
			{
				System.out.println("Cycle old loc = "+cs.getInBhavan());
				cs.setInBhavan(location);
				System.out.println("Cycle new loc = "+cs.getInBhavan());
			}
			cycleService.addCycle(cs);
		}
		//System.out.println("Final ID needed "+id+" location = "+location);
		return "home";
	}

	
	//@RequestMapping(method = RequestMethod.POST , value="/Cycles/remove")

}
