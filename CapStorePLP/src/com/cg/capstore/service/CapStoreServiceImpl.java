package com.cg.capstore.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.capstore.dao.ICapstoreDao;
import com.cg.capstore.dto.Customer;
import com.cg.capstore.dto.Merchant;
@Service("service")
@Transactional
public class CapStoreServiceImpl implements ICapstoreService{
	@Autowired
	ICapstoreDao dao;
	@Override
	public String addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		return dao.addCustomer(customer);
	}

	@Override
	public String addMerchant(Merchant merchant) {
		// TODO Auto-generated method stub
		return dao.addMerchant(merchant);
	}

	@Override
	public Customer fetchCustomerId(String cemail) {
		// TODO Auto-generated method stub
		return dao.fetchCustomerId(cemail);
	}

	@Override
	public Merchant fetchMerchantId(String memail) {
		// TODO Auto-generated method stub
		return dao.fetchMerchantId(memail);
	}

}
