package com.jsx.model;

import org.springframework.web.multipart.MultipartFile;

public class User {
	private int uid;
	private String uname;
	private Long uphone;
	private String usex;
	private String uaddress;
	private MultipartFile file;
	private  int uage;

	public String getUimage() {
		return uimage;
	}

	public void setUimage(String uimage) {
		this.uimage = uimage;
	}

	private String uimage;
	private String password;

	public int getUage() {
		return uage;
	}

	public void setUage(int uage) {
		this.uage = uage;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public Long getUphone() {
		return uphone;
	}

	public void setUphone(Long uphone) {
		this.uphone = uphone;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}







}
