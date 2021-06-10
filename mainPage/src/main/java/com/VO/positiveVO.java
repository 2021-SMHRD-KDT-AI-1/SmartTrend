package com.VO;

public class positiveVO {
	private String name;
	private String address;
	private String tel;
	private String count;
	private String file;
	
	public positiveVO(String name, String address, String tel, String count) {
		super();
		this.name = name;
		this.address = address;
		this.tel = tel;
		this.count = count;
	}
	
	
	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}
	
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
	
}
