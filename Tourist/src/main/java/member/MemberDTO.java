package member;

import java.sql.Date;

public class MemberDTO {
	private String emailId;
	private String email_address;
	private String name;
	private String password;
	private String tel;
	private String gender;
	private String agree;
	private String content;
	private java.sql.Date regidate;
	public MemberDTO() {};
	public MemberDTO(String emailId, String email_address, String name, String password, String tel, String gender,
			String agree, String content, Date regidate) {
		super();
		this.emailId = emailId;
		this.email_address = email_address;
		this.name = name;
		this.password = password;
		this.tel = tel;
		this.gender = gender;
		this.agree = agree;
		this.content = content;
		this.regidate = regidate;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getEmail_address() {
		return email_address;
	}
	public void setEmail_address(String email_address) {
		this.email_address = email_address;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public java.sql.Date getRegidate() {
		return regidate;
	}
	public void setRegidate(java.sql.Date regidate) {
		this.regidate = regidate;
	}
	
}
