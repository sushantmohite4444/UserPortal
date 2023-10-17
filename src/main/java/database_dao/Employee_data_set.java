package database_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.w3c.dom.UserDataHandler;

import entitityclasses.Employee;

public class Employee_data_set {

	private Connection Conn;

	public Employee_data_set(Connection Conn) {
		this.Conn = Conn;
	}

	public boolean Save(Employee emp) {

		boolean e = false;

		String query = "insert into empdata(name,lastname,email,password,mobno,gender,id) values(?,?,?,?,?,?,?)";
		try {

			PreparedStatement ps = this.Conn.prepareStatement(query);

			ps.setString(1, emp.getName());
			ps.setString(2, emp.getLastName());
			ps.setString(3, emp.getEmail());
			ps.setString(4, emp.getPassword());
			ps.setLong(5, emp.getMobno());
			ps.setString(6, emp.getGender());
//			ps.setString(7, emp.getProfilepic());
			 ps.setInt(7, emp.getId()); 
			ps.executeUpdate();

			e = true;
		} catch (SQLException o) {

			o.printStackTrace();
		}
		return e;
	}

	public Employee getBbdata(String Email, String Password) {

		Employee emp = null;

		String st = "select * from empdata where email=? and password=?";

		try {
			PreparedStatement ps = Conn.prepareStatement(st);
			ps.setString(1, Email);
			ps.setString(2, Password);

			System.out.println(Email + Password);
			ResultSet rs = ps.executeQuery();
			System.out.println(Email + Password);
			if (rs.next()) {
				emp = new Employee();
				emp.setId(rs.getInt("id"));
				emp.setName(rs.getString("name"));
				emp.setLastName(rs.getString("Lastname"));
				emp.setEmail(rs.getString("email"));
				emp.setGender(rs.getString("gender"));
				emp.setMobno(rs.getLong("mobno"));
				emp.setPassword(rs.getString("Password"));
				emp.setProfilepic(rs.getString("profpic"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return emp;

	};

	public boolean change(Employee emp) {

		boolean bool = false;
		String s = "UPDATE empdata SET name=?,lastname=?,email=?,password=?,mobno=?,gender=?,profpic=? WHERE id=?";

		try {
			PreparedStatement ps = Conn.prepareStatement(s);
			ps.setString(1, emp.getName());
			ps.setString(2, emp.getLastName());
			ps.setString(3, emp.getEmail());
			ps.setString(4, emp.getPassword());
			ps.setLong(5, emp.getMobno());
			ps.setString(6, emp.getGender());
			ps.setString(7, emp.getProfilepic());
			ps.setInt(8, emp.getId());

			ps.executeUpdate();
			bool = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return bool;

	}

}
