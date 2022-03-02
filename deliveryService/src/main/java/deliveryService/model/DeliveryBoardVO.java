package deliveryService.model;

public class DeliveryBoardVO {
	private int num;
	private String title;
	private String helperGender;
	private String exception;
	private String place;
	private int money;
	private int separation;
	private String content;
	private String day;
	private String deadLine;
	private String bid;
	private String helperCheck;
	private String helperId;
	private String fileName;

	public DeliveryBoardVO(int num, String title, String helperGender, String exception, String place, int money,
			int separation, String content, String day, String deadLine, String bid, String helperCheck,
			String helperId,String fileName) {
		super();
		this.num = num;
		this.title = title;
		this.helperGender = helperGender;
		this.exception = exception;
		this.place = place;
		this.money = money;
		this.separation = separation;
		this.content = content;
		this.day = day;
		this.deadLine = deadLine;
		this.bid = bid;
		this.helperCheck = helperCheck;
		this.helperId = helperId;
		this.fileName = fileName;
	}

	public DeliveryBoardVO(String title, String helperGender, String exception, String place, int money,
			int separation, String content, String deadLine, String fileName) {
		this.title = title;
		this.helperGender = helperGender;
		this.exception = exception;
		this.place = place;
		this.money = money;
		this.separation = separation;
		this.content = content;
		this.deadLine = deadLine;
		this.fileName = fileName;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHelperGender() {
		return helperGender;
	}

	public void setHelperGender(String helperGender) {
		this.helperGender = helperGender;
	}

	public String getException() {
		return exception;
	}

	public void setException(String exception) {
		this.exception = exception;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getSeparation() {
		return separation;
	}

	public void setSeparation(int separation) {
		this.separation = separation;
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

	public String getDeadLine() {
		return deadLine;
	}

	public void setDeadLine(String deadLine) {
		this.deadLine = deadLine;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getHelperCheck() {
		return helperCheck;
	}

	public void setHelperCheck(String helperCheck) {
		this.helperCheck = helperCheck;
	}

	public String getHelperId() {
		return helperId;
	}

	public void setHelperId(String helperId) {
		this.helperId = helperId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	
}
