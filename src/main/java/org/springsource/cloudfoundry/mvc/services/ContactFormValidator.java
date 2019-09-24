package org.springsource.cloudfoundry.mvc.services;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


/**
 * @author SivaLabs
 *
 */
@Component("contactFormValidator")
public class ContactFormValidator implements Validator
{
	@Override
	public boolean supports(@SuppressWarnings("rawtypes") Class clazz)
	{
		return Contact.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object model, Errors errors)
	{
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","required.name", "Name is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address","required.name", "Address is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dob","required.name", "Date of Birth is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email","required.name", "Email is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobile","required.name", "Mobile is required.");

	
	}
	

}
