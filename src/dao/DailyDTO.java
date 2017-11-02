package dao;

public class DailyDTO {

	private String email;
	private String ddate;
	private int b0counting;
	private int b1counting;
	private int b2counting;
	private int b3counting;
	private int b4counting;
	private double totalcal;
	private double totalacc;
	public int getArate() {
		return arate;
	}

	public void setArate(int arate) {
		this.arate = arate;
	}
	private int arate;
	
	

	public DailyDTO(String ddate, int b0counting, int b1counting, int b2counting, int b3counting,
			int b4counting, double totalcal, double totalacc, int arate) {
		super();
	
		this.ddate = ddate;
		this.b0counting = b0counting;
		this.b1counting = b1counting;
		this.b2counting = b2counting;
		this.b3counting = b3counting;
		this.b4counting = b4counting;
		this.totalcal = totalcal;
		this.totalacc = totalacc;
		this.arate = arate;
	}

	public String getDdate() {
		return ddate;
	}

	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getB0counting() {
		return b0counting;
	}
	public void setB0counting(int b0counting) {
		this.b0counting = b0counting;
	}
	public int getB1counting() {
		return b1counting;
	}
	public void setB1counting(int b1counting) {
		this.b1counting = b1counting;
	}
	public int getB2counting() {
		return b2counting;
	}
	public void setB2counting(int b2counting) {
		this.b2counting = b2counting;
	}
	public int getB3counting() {
		return b3counting;
	}
	public void setB3counting(int b3counting) {
		this.b3counting = b3counting;
	}
	public int getB4counting() {
		return b4counting;
	}
	public void setB4counting(int b4counting) {
		this.b4counting = b4counting;
	}
	public double getTotalcal() {
		return totalcal;
	}
	public void setTotalcal(double totalcal) {
		this.totalcal = totalcal;
	}
	public double getTotalacc() {
		return totalacc;
	}
	public void setTotalacc(double totalacc) {
		this.totalacc = totalacc;
	}
	
}
