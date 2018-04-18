package kr.tripper.holo.dto;

public class PostVO {
	private int postno;
	private String poto;
	private String postname;
	private String local;
	private String time;
	private String postcall;
	public int getPostno() {
		return postno;
	}
	public void setPostno(int postno) {
		this.postno = postno;
	}
	public String getPoto() {
		return poto;
	}
	public void setPoto(String poto) {
		this.poto = poto;
	}
	public String getPostname() {
		return postname;
	}
	public void setPostname(String postname) {
		this.postname = postname;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPostcall() {
		return postcall;
	}
	public void setPostcall(String postcall) {
		this.postcall = postcall;
	}
}
