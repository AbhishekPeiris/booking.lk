package Register;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegisteredUserDButil {

	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	// Get the values from servlet and insert values to the database using InsertRegistereduse() method
	
	public static boolean InsertRegistereduser(String Name, String Address, String Email, String ContactNumber,String username,String password) { 

		boolean InsertSuccess = false; // take boolean value from database checking whether  details inserted 

		try {

			con = DBconnect.getConnection();// get database connection
			stmt = con.createStatement();
			String sql = "insert into hoteldb.user_details values (0,'" + Name + "','" + Address + "','" + Email + "','"
					+ ContactNumber + "','"+username+"','"+password+"')";  //sql query

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {

				InsertSuccess = true;  // checking 
			} else {
				InsertSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return InsertSuccess;

	}

	
	
	//Update entered data using below method
	
	public static boolean UpdateRegisteredUser(String id, String name, String address, String email, String phone) {

		boolean success = false;

		try {

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update hoteldb.user_details set  user_name='" + name + "',user_address='" + address + "',user_email='"
					+ email + "',user_phone='" + phone + "'where user_id ='" + id + "'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return success;

	}

	
	//delete data from database
	
	public static boolean DeleteRegisteredUser(String id) {
		boolean isSuccess = false;
		int ID = Integer.parseInt(id);

		try {

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from hoteldb.user_details where user_id='" + ID + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {

				isSuccess = true;
			} else {
				isSuccess = false;

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return isSuccess;
	}
}
