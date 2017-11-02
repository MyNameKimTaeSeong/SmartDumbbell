package dao;

public class RankDTO {
	
	private String name;
	private Double kcal;
	private String email;
	

	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public RankDTO(String name, Double kcal, String email) {
		super();
		this.name = name;
		this.kcal = kcal;
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getKcal() {
		return kcal;
	}
	public void setKcal(Double kcal) {
		this.kcal = kcal;
	}
	
	
	
}
