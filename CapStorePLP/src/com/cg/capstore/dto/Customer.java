package com.cg.capstore.dto;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.Bean;


@Entity
@Table(name="customer_details")
public class Customer {
	@Column(name="first_name")
private String fname;
	@Column(name="last_name")
private String lname;
	@Column(name="phone_no")
private long phone_no;
	@Column(name="userId")
	@Id
private String email;
	@Column(name="password")
private String password;
	@Column(name="order_Id")
private long orderId;
	
	@Column(name="encrypted_password")
	private ArrayList<Integer> encryptedpass;
public Customer(long orderId) {
	super();
	this.orderId = orderId;
}
public ArrayList<Integer> getEncryptedpass() {
	return encryptedpass;
}
public void setEncryptedpass(ArrayList<Integer> encryptedpass) {
	this.encryptedpass = encryptedpass;
}
public Customer() {
	super();
	// TODO Auto-generated constructor stub
}

@Override
public String toString() {
	return "Customer [fname=" + fname + ", lname=" + lname + ", phone_no="
			+ phone_no + ", email=" + email + ", password=" + password
			+ ", orderId=" + orderId + ", encryptedpass=" + encryptedpass + "]";
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public long getPhone_no() {
	return phone_no;
}
public void setPhone_no(long phone_no) {
	this.phone_no = phone_no;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public long getOrderId() {
	return orderId;
}
public void setOrderId(long orderId) {
	this.orderId = orderId;
}
}
