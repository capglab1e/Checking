package com.cg.capstore.dao;

import com.cg.capstore.dto.Customer;
import com.cg.capstore.dto.Merchant;

public interface ICapstoreDao {

	public String addCustomer(Customer customer);
	public String addMerchant(Merchant merchant);
	public Customer fetchCustomerId(String cemail);
	public Merchant fetchMerchantId(String memail);
}
