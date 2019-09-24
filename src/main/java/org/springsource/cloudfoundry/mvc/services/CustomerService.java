package org.springsource.cloudfoundry.mvc.services;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
@SuppressWarnings("unchecked")
@Transactional
public class CustomerService {

    static private final String CUSTOMERS_REGION = "customers";

    @PersistenceContext
    private EntityManager em;

    public void createCustomer(Contact contact) {
       // Customer customer = new Customer();
       // customer.setFirstName(firstName);
        //customer.setLastName(lastName);
        //customer.setSignupDate(signupDate);
        em.persist(contact);
        //return contact;
    }

    public Collection<Customer> search(String name) {
        String sqlName = ("%" + name + "%").toLowerCase();
        String sql = "select c.* from customer c where (LOWER( c.firstName ) LIKE :fn OR LOWER( c.lastName ) LIKE :ln)";
        return em.createNativeQuery(sql, Customer.class)
                .setParameter("fn", sqlName)
                .setParameter("ln", sqlName)
                .getResultList();
    }

   // @CacheEvict(CUSTOMERS_REGION)
    public Contact edit(Integer id) {
    	Contact customer = getContactsById(id);
        return customer;
    }

    //@CacheEvict(CUSTOMERS_REGION)
    public void update(Contact contact) {
        em.merge(contact);
    }
    
    //@CacheEvict(CUSTOMERS_REGION)
    public void delete(Integer id) {
    	Contact customer = getContactsById(id);
        em.remove(customer);
    }
    @Transactional(readOnly = true)
    public List<Contact> getAllCustomers() {

   	
        String sql = "select c from Contact c";
        System.out.println(sql);
        return em.createQuery(sql,Contact.class).getResultList();
    	//return em;
    }


    @Cacheable(CUSTOMERS_REGION)
    @Transactional(readOnly = true)
    public Customer getCustomerById(Integer id) {
        return em.find(Customer.class, id);
    }
    @Cacheable(CUSTOMERS_REGION)
    @Transactional(readOnly = true)
    public Contact getContactsById(Integer id) {
        return em.find(Contact.class, id);
    }
    @CacheEvict(CUSTOMERS_REGION)
    public void deleteCustomer(Integer id) {
        Customer customer = getCustomerById(id);
        em.remove(customer);
    }
    //@CacheEvict(value = CUSTOMERS_REGION, key = "#id")
    public boolean userLogin(String name, String address) {
    	List<Contact> al=getAllCustomers();
 		boolean b=false;
		for(Contact cont: al)
		{
			if(cont.getName().equals(name) && cont.getAddress().equals(address))
			{
			b=true;	
			}
		}
	
			return b;
    }
    
    @CacheEvict(value = CUSTOMERS_REGION, key = "#id")
    public void updateCustomer(Integer id, String fn, String ln, Date birthday) {
        Customer customer = getCustomerById(id);
        customer.setLastName(ln);
        customer.setSignupDate(birthday);
        customer.setFirstName(fn);
        //sessionFactory.getCurrentSession().update(customer);
        em.merge(customer);
    }
}
