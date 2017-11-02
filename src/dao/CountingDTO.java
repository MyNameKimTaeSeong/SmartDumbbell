package dao;

public class CountingDTO {
	private String email;
	private String position;
	private int goodCount;
	private double kcal;
	private double accuracy;
	private String writeDate;
	public CountingDTO() {
		
	}
	
	public CountingDTO(String email, String position, int goodCount, double kcal, double accuracy, String writeDate) {
		super();
		this.email = email;
		this.position = position;
		this.goodCount = goodCount;
		this.kcal = kcal;
		this.accuracy = accuracy;
		this.writeDate = writeDate;
		
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getGoodCount() {
		return goodCount;
	}
	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}
	public double getKcal() {
		return kcal;
	}
	public void setKcal(double kcal) {
		this.kcal = kcal;
	}
	public double getAccuracy() {
		return accuracy;
	}
	public void setAccuracy(double accuracy) {
		this.accuracy = accuracy;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	
	
}
