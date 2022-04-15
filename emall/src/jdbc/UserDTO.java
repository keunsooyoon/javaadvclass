package jdbc;

public class UserDTO {

	private String uid;
	private String upw;
	private String uname;
	private String ugender;
	private String ubirth;
	private String uemail;
	private String uphone;
	private String uaddr;
	private String uregiday;
	
	
	public String getUid() {
		return uid;
	}
	public String getUpw() {
		return upw;
	}
	public String getUname() {
		return uname;
	}
	public String getUgender() {
		return ugender;
	}
	public String getUbirth() {
		return ubirth;
	}
	public String getUemail() {
		return uemail;
	}
	public String getUphone() {
		return uphone;
	}
	public String getUaddr() {
		return uaddr;
	}
	public String getUregiday() {
		return uregiday;
	}
	
	
	public UserDTO(String uid, String upw, String uname, String ugender, String ubirth, String uemail, String uphone,
			String uaddr, String uregiday) {
		super();
		this.uid = uid;
		this.upw = upw;
		this.uname = uname;
		this.ugender = ugender;
		this.ubirth = ubirth;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaddr = uaddr;
		this.uregiday = uregiday;
	}


	
	
}
