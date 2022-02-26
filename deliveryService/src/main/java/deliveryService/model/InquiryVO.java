package deliveryService.model;

public class InquiryVO {
	private int num;
	private String send_id;
	private String receive_id;
	private String content;
	private String day;
	
	public InquiryVO(int num, String send_id, String receive_id, String content, String day) {
		super();
		this.num = num;
		this.send_id = send_id;
		this.receive_id = receive_id;
		this.content = content;
		this.day = day;
	}

	public InquiryVO(String send_id, String receive_id, String content) {
		this.send_id = send_id;
		this.receive_id = receive_id;
		this.content = content;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSend_id() {
		return send_id;
	}

	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}

	public String getReceive_id() {
		return receive_id;
	}

	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
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