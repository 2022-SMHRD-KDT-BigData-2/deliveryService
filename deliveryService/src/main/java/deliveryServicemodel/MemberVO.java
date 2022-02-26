package deliveryServicemodel;

public class MemberVO {
	private String id;
	private String pw;
	private String gender;
	private int major;
	private String nation;
	private String email;
	private String helper_check;
	
	public MemberVO(String id, String pw, String gender, int major, String nation, String email, String helper_check) {
	
		this.id = id;
		this.pw = pw;
		this.gender = gender;
		this.major = major;
		this.nation = nation;
		this.email = email;
		this.helper_check = helper_check;
	}

	public MemberVO(String id, String pw) {
		
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getMajor() {
		return major;
	}

	public void setMajor(int major) {
		this.major = major;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHelper_check() {
		return helper_check;
	}

	public void setHelper_check(String helper_check) {
		this.helper_check = helper_check;
	}
	
}
	