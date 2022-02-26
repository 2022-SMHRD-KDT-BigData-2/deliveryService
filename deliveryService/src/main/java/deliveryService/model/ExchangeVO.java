package deliveryService.model;

import java.util.Date;

public class ExchangeVO {
	private int num;
	private String exid;
	private String title;
	private String content;
	private Date day;
	private Date deadline;
	private String fileName;
	
	public ExchangeVO(int num, String exid, String title, String content, Date day, Date deadline, String fileName) {
		super();
		this.num = num;
		this.exid = exid;
		this.title = title;
		this.content = content;
		this.day = day;
		this.deadline = deadline;
		this.fileName = fileName;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getExid() {
		return exid;
	}

	public void setExid(String exid) {
		this.exid = exid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
		
}
