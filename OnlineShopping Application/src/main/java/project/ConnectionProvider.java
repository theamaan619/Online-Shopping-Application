package project;

import java.sql.*;
public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ospjsp", "root", "Amaan619");
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
