package entitityclasses;



public class Employee {
	
	private int Id;
	private String Name;
	private String LastName;
	private String Gender;
	
	private String Email;
	private long Mobno;
	private String Password;
	private String Profilepic;
	
	
	public String getProfilepic() {
		return Profilepic;
	}
	public void setProfilepic(String profilepic) {
		Profilepic = profilepic;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public long getMobno() {
		return Mobno;
	}
	public void setMobno(long mobno) {
		Mobno = mobno;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
	
	@Override
	public String toString() {
		return "Employee [Id=" + Id + ", Name=" + Name + ", LastName=" + LastName + ", Gender=" + Gender + ", Email="
				+ Email + ", Mobno=" + Mobno + ", Password=" + Password + ", Profilepic=" + Profilepic + "]";
	}
	
	public Employee(int id, String name, String lastName, String gender,  String email, long mobno,String password) {
		super();
	
		Id=id;
		Name = name;
		LastName = lastName;
		Email = email;
		Password = password;
		Mobno = mobno;
		Gender = gender;
		this.Profilepic="Defaultpro.png";
		
		
	}
	

	public Employee() {
		// TODO Auto-generated constructor stub
	}
}
