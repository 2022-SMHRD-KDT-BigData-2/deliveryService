package deliveryService.model;

import java.util.Date;

public class ExchangeVO {
	private int num;
	private String exid;
	private String title;
	private String content;
	private String day;
	private String deadline;
	private String exfinish;
	private String exfileName;
	
	
	public ExchangeVO(int num, String exid, String title, String content, String day, String deadline, String exfinish,
			String exfileName) {
		
		this.num = num;
		this.exid = exid;
		this.title = title;
		this.content = content;
		this.day = day;
		this.deadline = deadline;
		this.exfinish = exfinish;
		this.exfileName = exfileName;
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


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public String getDeadline() {
		return deadline;
	}


	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}


	public String getExfinish() {
		return exfinish;
	}


	public void setExfinish(String exfinish) {
		this.exfinish = exfinish;
	}


	public String getExfileName() {
		return exfileName;
	}


	public void setExfileName(String exfileName) {
		this.exfileName = exfileName;
	}


	
	
		
}
