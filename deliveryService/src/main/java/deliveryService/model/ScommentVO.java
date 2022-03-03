package deliveryService.model;

public class ScommentVO {

	private int num;
	private int cnum;
	private String dcid;
	private String content;
	private int money;
	private String day;
	
	public ScommentVO(int num, int cnum, String dcid, String content, int money, String day) {
		super();
		this.num = num;
		this.cnum = cnum;
		this.dcid = dcid;
		this.content = content;
		this.money = money;
		this.day = day;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getDcid() {
		return dcid;
	}

	public void setDcid(String dcid) {
		this.dcid = dcid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	
	
	
}
