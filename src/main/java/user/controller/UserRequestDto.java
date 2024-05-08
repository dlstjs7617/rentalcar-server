package user.controller;

public class UserRequestDto {
	private String id;
	private String password;
	private String name;
	private String email;
	private String telecom;
	private String phone;
	
	public UserRequestDto() {
		
	}

	public UserRequestDto(String id, String password, String name, String email, String telecom, String phone) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.telecom = telecom;
		this.phone = phone;
	}

	public UserRequestDto(String id, String password, String name, String telecom, String phone) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.telecom = telecom;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelecom() {
		return telecom;
	}

	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
