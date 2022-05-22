package net.javaguides.usermanagement.model;

public class User {
	private int id;
	private String uname;
	private String upwd;
	private String uemail;
	private String umobile;
	private String unic;
	
	public User(int id, String uname, String upwd, String uemail, String umobile, String unic) {
		super();
		this.id = id;
		this.uname = uname;
		this.upwd = upwd;
		this.uemail = uemail;
		this.umobile = umobile;
		this.unic = unic;
	}
	
	public User(String uname, String upwd, String uemail, String umobile, String unic) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.uemail = uemail;
		this.umobile = umobile;
		this.unic = unic;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUmobile() {
		return umobile;
	}
	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}
	public String getUnic() {
		return unic;
	}
	public void setUnic(String unic) {
		this.unic = unic;
	}
	
	
}
