package rentalServer.user.controller;

import java.sql.Timestamp;

public class User {
	private String id;
	private String name;
	private String email;
	private String telecom;
	private String phone;
	private Timestamp regDate;
	private Timestamp modDate;
	
	public User(String id, String name, String email, String telecom, String phone, Timestamp regDate,
			Timestamp modDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.telecom = telecom;
		this.phone = phone;
		this.regDate = regDate;
		this.modDate = modDate;
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

	public String getTelecom() {
		return telecom;
	}

	public String getPhone() {
		return phone;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public Timestamp getModDate() {
		return modDate;
	}
	
	
	
}


