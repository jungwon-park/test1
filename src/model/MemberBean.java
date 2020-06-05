package model;

public class MemberBean {
	private String id;
	private String birth;
	private String pw;
	private String name;
	private String phonenumber;
	private String email;
	private String nickname;
	private String subscribecode;
	
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhonenumber() {
		return phonenumber;
	}


	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getSubscribecode() {
		return subscribecode;
	}


	public void setSubscribecode(String subscribecode) {
		this.subscribecode = subscribecode;
	}


	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", birth=" + birth + ", pw=" + pw + ", name=" + name + ", phonenumber="
				+ phonenumber + ", email=" + email + ", nickname=" + nickname + ", subscribecode=" + subscribecode
				+ "]";
	}
	
}	