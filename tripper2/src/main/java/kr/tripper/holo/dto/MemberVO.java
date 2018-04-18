package kr.tripper.holo.dto;

public class MemberVO {
	private String email;
	private String  pwd;
	private String f_name;
	private String l_name;
	private String nickname;
	private String state;
	private String phonnum;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPhonnum() {
		return phonnum;
	}
	public void setPhonnum(String phonnum) {
		this.phonnum = phonnum;
	}
}
