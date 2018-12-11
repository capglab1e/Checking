package com.cg.capstore.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cg.capstore.dto.Customer;
import com.cg.capstore.dto.Merchant;
@Repository("dao")
public class CapStoreDaoImpl implements ICapstoreDao{
	@PersistenceContext
	EntityManager em;
	@Override
	public String addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		em.persist(customer);
		em.flush();
		return customer.getEmail();
	}

	@Override
	public String addMerchant(Merchant merchant) {
		// TODO Auto-generated method stub
		em.persist(merchant);
		em.flush();
		return merchant.getEmail();
	}

	@Override
	public Customer fetchCustomerId(String cemail) {
		// TODO Auto-generated method stub
		Customer customer = em.find(Customer.class, cemail);
		return customer;
	}

	@Override
	public Merchant fetchMerchantId(String memail) {
		// TODO Auto-generated method stub
		Merchant merchant = em.find(Merchant.class, memail);
		return merchant;
	}

}
