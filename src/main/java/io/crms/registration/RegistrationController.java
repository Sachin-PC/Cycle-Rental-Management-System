package io.crms.registration;

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


@Controller
public class RegistrationController {
	
	@Autowired
	private RegistrationService registrationService;
	
	@RequestMapping("/")
	public String homepage(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_HOME");
		return "firstpage";
	}
	
	@RequestMapping("/Registration")
	public String regpage(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_REGISTER");
		return "firstpage";
	}
	
	/*@RequestMapping("/Registration")
	public List<Registration> getAllRegistrations()
	{
		return registrationService.getAllRegistrations();
	}*/
	
	@RequestMapping(method=RequestMethod.POST, value="/Registration")
	public String regUser(@ModelAttribute Registration user, BindingResult bindingResult , HttpServletRequest request)
	{
		registrationService.addRegistration(user);
		request.setAttribute("mode","MODE_HOME");
		return "firstpage";
	}
	
	@RequestMapping("/login")
	public String loginpage(HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_LOGIN");
		return "firstpage";
	}
	
	
	@RequestMapping(method=RequestMethod.POST, value="/home")
	public String loginUser(@ModelAttribute Registration user, BindingResult bindingResult , HttpServletRequest request)
	{
		if(registrationService.findBystudentIdAndPassword(user.getStudentId(), user.getPassword()) != null)
		{
			return "home";
		}
		else
		{
			request.setAttribute("error", "Invalid Credential, please login again");
			request.setAttribute("mode","MODE_LOGIN");
			return "firstpage";
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
