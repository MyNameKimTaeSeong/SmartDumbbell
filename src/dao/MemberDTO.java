package dao;

public class MemberDTO {
	
	private String id;
	private String name;
	private String email;
	private String password; 
	private String tel;
	
	public MemberDTO(String id, String name, String email, String password, String tel) {
		
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.tel = tel;
	}
	
	
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getTel() {
		return tel;
	}
	
	
	
}
