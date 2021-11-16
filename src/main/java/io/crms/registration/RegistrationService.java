package io.crms.registration;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class RegistrationService {
	
	@Autowired
	private RegistrationRepository registrationRepository;
	
	
	public List<Registration> getAllRegistrations()
	{
		List<Registration> registrations= new ArrayList<>();
		registrationRepository.findAll().forEach(registrations::add);
		return registrations;
	}
	
	public void addRegistration(Registration registration)
	{
		registrationRepository.save(registration);
	}
	
	public boolean getRegistrationById(int id)
	{
		Optional<Registration> registration;
		//Registration reg;
		registration = registrationRepository.findById(id);
		if(registration.isPresent())
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public Registration findBystudentIdAndPassword( String studentId, String password)
	{
		return registrationRepository.findBystudentIdAndPassword(studentId, password);
	}

}
