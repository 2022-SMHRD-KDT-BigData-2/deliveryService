package deliveryService.model;

public class MemberVO {
	private String Id;
	private String Pw;
	private String Gender;
	private int Major;
	private String Nation;
	private String Email;
	private String Helper_check;
	
	public MemberVO(String id, String pw, String gender, int major, String nation, String email, String helper_check) {
	
		Id = id;
		Pw = pw;
		Gender = gender;
		Major = major;
		Nation = nation;
		Email = email;
		Helper_check = helper_check;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getPw() {
		return Pw;
	}

	public void setPw(String pw) {
		Pw = pw;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public int getMajor() {
		return Major;
	}

	public void setMajor(int major) {
		Major = major;
	}

	public String getNation() {
		return Nation;
	}

	public void setNation(String nation) {
		Nation = nation;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getHelper_check() {
		return Helper_check;
	}

	public void setHelper_check(String helper_check) {
		Helper_check = helper_check;
	}
	
}