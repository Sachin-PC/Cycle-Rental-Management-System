package io.crms.admin;

import java.util.Arrays;
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

import io.crms.cycles.Cycle;
import io.crms.cycles.CycleService;
import io.crms.registration.Registration;


@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CycleService cycleService; 
	
	@RequestMapping("/admin")
	public String homepage(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_HOME");
		return "admin";
	}
	
	/*@RequestMapping("/Registration")
	public List<Registration> getAllRegistrations()
	{
		return registrationService.getAllRegistrations();
	}*/
	
	@RequestMapping("/adminlogin")
	public String loginpage(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_LOGIN");
		return "admin";
	}
	
	@RequestMapping("/adminHome")
	public String adminHomepage(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_ADDCYCLE");
		return "adminwork";
	}
	
	/*@RequestMapping("/Registration")
	public List<Registration> getAllRegistrations()
	{
		return registrationService.getAllRegistrations();
	}*/
	
	@RequestMapping(method=RequestMethod.POST, value="/admin-uss")
	public String add_Cycle(@ModelAttribute Cycle cycle, BindingResult bindingResult , HttpServletRequest request)
	{
		cycleService.addCycle(cycle);
		request.setAttribute("mode","MODE_ADDCYCLE");
		return "adminwork";
	}
	
	
	@RequestMapping(method=RequestMethod.POST, value="/admin-user")
	public String loginUser(@ModelAttribute Admin admin, BindingResult bindingResult , HttpServletRequest request)
	{
		
		if(adminService.findByadminIdAndPassword(admin.getAdminId(), admin.getPassword()) != null)
		{
			request.setAttribute("mode","MODE_ADDCYCLE");
			return "adminwork";
		}
		else
		{
			request.setAttribute("error", "Invalid Credential, please login again");
			request.setAttribute("mode","MODE_LOGIN");
			return "admin";
		}
		
	}
	
	
	@RequestMapping("/viewCycles")
	public String viewAllCycles(HttpServletRequest request)
	{
		System.out.print("YESSSSS\n");
		List<Cycle> cycles_list = cycleService.getAllCycles();
		
		if( cycles_list.size()== 0)
		{
			//String bh = cycle.getInBhavan();
			//String gt = cycle.getGenderType();
			//System.out.println(cycle.getInBhavan());
			//System.out.println(cycle.getGenderType());
			request.setAttribute("error", "No cycle available");
			//request.setAttribute("mode","MODE_LOGIN");
			return "home";
			
			//return "New2";
		}
		else
		{
			request.setAttribute("mode","MODE_VIEWCYCLES");
			request.setAttribute("allCycles", cycleService.getAllCycles());
			return "bookcycle";
		}
		
	}
	
	/*@RequestMapping(method=RequestMethod.POST, value="/Registration")
	public String addRegistration(@RequestBody Registration registration)
	{
		int user_id = registration.getId();
		
		
		if(registrationService.getRegistrationById(user_id))
		{
			return " A user is already registered with the given User_Id. Please select a different User Id";
		}
		else
		{
			registrationService.addRegistration(registration);
			return "User Registration Succesfull";
			
		}
		//registrationService.addRegistration(registration);
		//return "Registration Succesfull";
	}*/

}
