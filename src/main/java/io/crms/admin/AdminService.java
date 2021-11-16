package io.crms.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class AdminService {
	
	@Autowired
	private AdminRepository registrationRepository;
	
	
	public List<Admin> getAlladmins()
	{
		List<Admin> admins= new ArrayList<>();
		registrationRepository.findAll().forEach(admins::add);
		return admins;
	}
	
	public void addadmin(Admin admin)
	{
		registrationRepository.save(admin);
	}
	
	public boolean getRegistrationById(int id)
	{
		Optional<Admin> admin;
		//Registration reg;
		admin = registrationRepository.findById(id);
		if(admin.isPresent())
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public Admin findByadminIdAndPassword( String studentId, String password)
	{
		return registrationRepository.findByadminIdAndPassword(studentId, password);
	}

}
