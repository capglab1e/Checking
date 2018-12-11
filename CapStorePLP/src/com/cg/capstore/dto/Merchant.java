package com.cg.capstore.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="merchant_details")
public class Merchant {
	@Column(name="email")
	@Id
private String email;
	
	@Column(name="name")
private String name;
	
	@Column(name="Company_Name")
private String Company_Name;
	
	@Column(name="Company_Address")
private String Company_Address;
	@Column(name="phone_no")
private long phone_no;
	@Column(name="password")
private String password;
	@Column(name="rating")
private float rating;
public Merchant(String email, String name, String company_Name,
		String company_Address, long phone_no, String password, float rating) {
	super();
	this.email = email;
	this.name = name;
	Company_Name = company_Name;
	Company_Address = company_Address;
	this.phone_no = phone_no;
	this.password = password;
	this.rating = rating;
}
public Merchant() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Merchant [email=" + email + ", name=" + name + ", Company_Name="
			+ Company_Name + ", Company_Address=" + Company_Address
			+ ", phone_no=" + phone_no + ", password=" + password + ", rating="
			+ rating + "]";
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getCompany_Name() {
	return Company_Name;
}
public void setCompany_Name(String company_Name) {
	Company_Name = company_Name;
}
public String getCompany_Address() {
	return Company_Address;
}
public void setCompany_Address(String company_Address) {
	Company_Address = company_Address;
}
public long getPhone_no() {
	return phone_no;
}
public void setPhone_no(long phone_no) {
	this.phone_no = phone_no;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public float getRating() {
	return rating;
}
public void setRating(float rating) {
	this.rating = rating;
}
}
