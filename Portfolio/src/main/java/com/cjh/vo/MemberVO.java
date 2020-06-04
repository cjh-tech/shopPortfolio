package com.cjh.vo;

import org.springframework.beans.factory.annotation.Autowired;

public class MemberVO {
	private int idx;
	private String id;
	private String name;
	private String password;
	private String birth;
	private String gender;
	private String email;
	private String phone;
	private String address;
	
	public MemberVO() {
	}
	
	public MemberVO(String id, String password) {
		this.id = id;
		this.password = password;
	}
	
	public MemberVO(String id,String name, String email) {
		this.id = id;
		this.name = name;
		this.email = email;
	}
	
	public MemberVO ( String id ,String password, String email, String phone, String address) {
		this.id = id ;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}
	
	public MemberVO(String id, String name, String password, String birth, 
			String gender, String email, String phone, String address) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.birth = birth;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	
	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", id=" + id + ", name=" + name + ", password=" + password + ", birth=" + birth
				+ ", gender=" + gender + ", email=" + email + ", phone=" + phone + ", address=" + address + "]";
	}
	
	
}
