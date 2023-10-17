package helperclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {
	
	private static Connection Conn;
	
		public static Connection getconnection() {
			
		
			if(Conn== null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				 String url ="jdbc:oracle:thin:@DESKTOP-067DG19:1521:XE" ;
				 Conn= DriverManager.getConnection(url,"system","system");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			}
			return Conn;
			
		}

}
