package com.niit.ShoppingCartBackEnd.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.stereotype.Component;
@Entity
@Component
public class UserTable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int uid;
	@Pattern(regexp = "^([7-9]{1})([0-9]{9})", message = "Not a valid number ,Phone No. must be of 10 digits")
	private String pno;
	@Size(min=8,max=20, message="Please Used Atleast 8 Character Password!")
	private String pw;
	@Size(min=2,max=50, message="Please enter valid first name!")
	private String fname;
	@Size(min=2,max=50, message="Please enter valid last name!")
	private String lname;
	@Email(message="please enter valid email address")
	private String email;
	@Size(min=2,max=50, message="Please enter valid address line!")
	private String add1;
	@Size(min=2,max=50, message="Please enter valid address line!")
	private String add2;
	@Size(min=2,max=50, message="Please Enter Valid address line!")
	private String add3;
	@Size(min=2,max=50, message="Please Enter Valid Address Line!")
	private String city;
	@Size(min=2,max=50, message="Please Enter Pincode!")
	private String state;
	
	
	@Transient
	private String Cpw;
	
	@Transient
	private String NPw1;
	
	@Transient
	private String Npw2;
	
	
	
	public String getCpw() {
		return Cpw;
	}

	public void setCpw(String cpw) {
		Cpw = cpw;
	}

	public String getNPw1() {
		return NPw1;
	}

	public void setNPw1(String nPw1) {
		NPw1 = nPw1;
	}

	public String getNpw2() {
		return Npw2;
	}

	public void setNpw2(String npw2) {
		Npw2 = npw2;
	}

	private int pincode;
	private String role="ROLE_USER";
	@OneToOne
	@JoinColumn(name="cartid")
	private Cart cart;

	
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	@Column(name = "is_active")
	private boolean active = true;

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdd1() {
		return add1;
	}

	public void setAdd1(String add1) {
		this.add1 = add1;
	}

	public String getAdd2() {
		return add2;
	}

	public void setAdd2(String add2) {
		this.add2 = add2;
	}

	public String getAdd3() {
		return add3;
	}

	public void setAdd3(String add3) {
		this.add3 = add3;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	


}



