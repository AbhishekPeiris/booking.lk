package Register;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RegisteredUser implements Read{

	private static int id;
	private String name;
	private String address;
	private String email;
	private String phone;
	
	private String username; 
	private String password;
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
    //default constructor
	public RegisteredUser(Connection connection) {

	}

	
	//constructor
	
	//overloading constructor 
	public RegisteredUser(int id, String name, String address, String email, String phone,String username,String password) {

		this.id = id;
		this.name = name;                    
		this.address = address;
		this.email = email;
		this.phone = phone;
		
		this.username=username;         
		this.password=password;         
	}

	
	//getters and setters
	
	public static int getId() {
		return id;
	}

	public void setID(int id) {
		this.id = id;
	}

	public void setname(String name) {
		this.name = name;
	}

	public void setaddress(String address) {
		this.address = address;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public void setphone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}
	
	
	public String username() {                            
		return username;
	}
	public String getpassword() {                         
		return password;
	}
	
	
	

	//Read (retrieve) details using Read interface and read them to array list
	
	public List<RegisteredUser> readdetails() {
		List<RegisteredUser> list = new ArrayList<>();

		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user_details"; // Remove the user_id filter
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				
				String username = rs.getString(6);
				String password = rs.getString(7);

				RegisteredUser user = new RegisteredUser(id, name, address, email, phone,username,password);
				list.add(user);
			}
		} catch (Exception e) {
			// Handle exceptions
		}
		return list;
	}

	
	
	
	
	
}
