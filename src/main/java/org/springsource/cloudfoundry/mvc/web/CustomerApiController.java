package org.springsource.cloudfoundry.mvc.web;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springsource.cloudfoundry.mvc.services.Contact;
import org.springsource.cloudfoundry.mvc.services.ContactFormValidator;
import org.springsource.cloudfoundry.mvc.services.Customer;
import org.springsource.cloudfoundry.mvc.services.CustomerService;

import com.nexmo.client.NexmoClient;
import com.nexmo.client.NexmoClientException;
import com.nexmo.client.sms.SmsSubmissionResponse;
import com.nexmo.client.sms.SmsSubmissionResponseMessage;
import com.nexmo.client.sms.messages.TextMessage;
import com.twilio.sdk.TwilioRestException;

@Controller
public class CustomerApiController {
    private Logger log = Logger.getLogger(getClass());

    @Autowired  private CustomerService customerService;
    @Autowired
	private ContactFormValidator validator;
	

    public static final String CUSTOMERS_ENTRY_URL = "/crm/customers";
    public static final String CUSTOMERS_SEARCH_URL = "/crm/search";
    public static final String CUSTOMERS_BY_ID_ENTRY_URL = CUSTOMERS_ENTRY_URL + "/{id}";

    @RequestMapping("/home")
	public String home()
	{
		System.out.println("i am in contrlooer---");
    	return "login";
	}
    
    @RequestMapping("/userLogin")
	public String userLogin(@RequestParam(required= false, defaultValue="") String name,@RequestParam(required= false, defaultValue="") String address)
	{
		System.out.println("i am in Controller");
		ModelAndView mav1 = new ModelAndView("showContacts");
		ModelAndView mav2 = new ModelAndView("login");
	 boolean contacts = customerService.userLogin(name.trim(),address.trim());
	 if(contacts)
	 {
		 return "redirect:viewAllContacts.do";
	}
	 else
	 {
		 return "redirect:home.do";
	}
	}
	
    
    @RequestMapping("/customer")
	public String customer(@RequestParam(required= false, defaultValue="") String name,@RequestParam(required= false, defaultValue="") String address)
	{
    	System.out.println("i am in viewcontact controller");
    	return "redirect:viewAllContacts.do";
	}
    
    @RequestMapping("/viewAllContacts")
	public ModelAndView getAllContacts()
	{
		ModelAndView mav = new ModelAndView("showContacts");
		List<Contact> contacts = customerService.getAllCustomers();
        log.debug("contacts===="+contacts);
		mav.addObject("SEARCH_CONTACTS_RESULTS_KEY", contacts);
		return mav;
	}
	
    @RequestMapping(value="/saveContact", method=RequestMethod.GET)
	public ModelAndView newuserForm()
	{
		ModelAndView mav = new ModelAndView("newContact");
		Contact contact = new Contact();
		mav.getModelMap().put("newContact", contact);
		return mav;
	}
    
    @RequestMapping(value="/saveContact", method=RequestMethod.POST)
	public String create(@ModelAttribute("newContact")Contact contact, BindingResult result, SessionStatus status) throws TwilioRestException
	{
	validator.validate(contact, result);
		if (result.hasErrors()) 
		{				
			return "newContact";
		}
		else {
			
			customerService.createCustomer(contact);
			status.setComplete();
			
		}
		return "redirect:viewAllContacts.do";
	}
    @RequestMapping(value="/updateContact", method=RequestMethod.GET)
	public ModelAndView edit(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("editContact");
		Contact contact = customerService.edit(id);
		mav.addObject("editContact", contact);
		return mav;
	}
    
    @RequestMapping(value="/updateContact", method=RequestMethod.POST)
	public String update(@ModelAttribute("editContact") Contact contact, BindingResult result, SessionStatus status)
	{
		validator.validate(contact, result);
		if (result.hasErrors()) {
			return "editContact";
		}
		customerService.update(contact);
		status.setComplete();
		System.out.println("------SMS Code here will start----");
		NexmoClient client = new NexmoClient.Builder()
		  .apiKey("d121ae56")
		  .apiSecret("D1GnTLiIHwA80N09")
		  .build();

		String messageText = "Hello from Nexmo";
		TextMessage message = new TextMessage("Nexmo", "918939150121", messageText);

		SmsSubmissionResponse response = null;
		try {
			response = client.getSmsClient().submitMessage(message);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NexmoClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		for (SmsSubmissionResponseMessage responseMessage : response.getMessages()) {
		    System.out.println(responseMessage);
		}
		return "redirect:viewAllContacts.do";
	}
    
    @RequestMapping("deleteContact")
	public ModelAndView delete(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("redirect:viewAllContacts.do");
		customerService.delete(id);
		return mav;
	}
	
    @ResponseBody
    @RequestMapping(value = CUSTOMERS_SEARCH_URL, method = RequestMethod.GET)
    public Collection<Customer> search(@RequestParam("q") String query) throws Exception {
        Collection<Customer> customers = customerService.search(query);
        if (log.isDebugEnabled())
            log.debug(String.format("retrieved %s results for search query '%s'", Integer.toString(customers.size()), query));
        return customers;
    }
   @ResponseBody
    @RequestMapping(value = CUSTOMERS_BY_ID_ENTRY_URL, method = RequestMethod.GET)
    public Customer customerById(@PathVariable  Integer id) {
        return this.customerService.getCustomerById(id);
    }

    /*@ResponseBody
    @RequestMapping(value = CUSTOMERS_ENTRY_URL, method = RequestMethod.GET)
    public List<Customer> customers() {
        return this.customerService.getAllCustomers();
    }
*/
    /*@ResponseBody
    @RequestMapping(value = CUSTOMERS_ENTRY_URL, method = RequestMethod.PUT)
    public Integer addCustomer(@RequestParam String firstName, @RequestParam String lastName) {
        return customerService.createCustomer(firstName, lastName, new Date()).getId();
    }
*/
    @ResponseBody
    @RequestMapping(value = CUSTOMERS_BY_ID_ENTRY_URL, method = RequestMethod.POST)
    public Integer updateCustomer(@PathVariable  Integer id, @RequestBody Customer customer) {
        customerService.updateCustomer(id, customer.getFirstName(), customer.getLastName(), customer.getSignupDate());
        return id;
    }
}