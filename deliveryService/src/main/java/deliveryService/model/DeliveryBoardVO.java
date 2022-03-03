package deliveryService.model;

public class DeliveryBoardVO {
	private int num;
	private String title;
	private String helper_gender;
	private String helper_exception;
	private String place;
	private int money;
	private int separation;
	private String content;
	private String day;
	private String deadline;
	private String bid;
	private String helperCheck;
	private String helperId;
	private String fileName;
	
	public DeliveryBoardVO(int num, String title, String helper_gender, String helper_exception, String place,
			int money, int separation, String content, String day, String deadline, String bid, String helperCheck,
			String helperId, String fileName) {
		super();
		this.num = num;
		this.title = title;
		this.helper_gender = helper_gender;
		this.helper_exception = helper_exception;
		this.place = place;
		this.money = money;
		this.separation = separation;
		this.content = content;
		this.day = day;
		this.deadline = deadline;
		this.bid = bid;
		this.helperCheck = helperCheck;
		this.helperId = helperId;
		this.fileName = fileName;
	}

	public DeliveryBoardVO(String title, String helper_gender, String helper_exception, String place, int money,
			int separation, String content, String deadline, String bid, String fileName) {
		this.title = title;
		this.helper_gender = helper_gender;
		this.helper_exception = helper_exception;
		this.place = place;
		this.money = money;
		this.separation = separation;
		this.content = content;
		this.deadline = deadline;
		this.bid = bid;
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

	public String getHelper_gender() {
		return helper_gender;
	}

	public void setHelper_gender(String helper_gender) {
		this.helper_gender = helper_gender;
	}

	public String getHelper_exception() {
		return helper_exception;
	}

	public void setHelper_exception(String helper_exception) {
		this.helper_exception = helper_exception;
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
		return deadline;
	}

	public void setDeadLine(String deadline) {
		this.deadline = deadline;
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
