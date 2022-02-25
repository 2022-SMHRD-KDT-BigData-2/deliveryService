package deliveryService.model;

public class ExchangeCommentVO {
	private int num;
	private int exnum;
	private String excid;
	private String content;
	private String day;
	
	public ExchangeCommentVO(int num, int exnum, String excid, String content, String day) {
		super();
		this.num = num;
		this.exnum = exnum;
		this.excid = excid;
		this.content = content;
		this.day = day;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getExnum() {
		return exnum;
	}

	public void setExnum(int exnum) {
		this.exnum = exnum;
	}

	public String getExcid() {
		return excid;
	}

	public void setExcid(String excid) {
		this.excid = excid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	
}
