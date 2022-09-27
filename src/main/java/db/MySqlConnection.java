package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnection {

	public static final String url = "jdbc:mysql://localhost:3306/agenciaViagens";
	private static final String user = "root";
	private static final String password = "87654321";

	public static Connection createConnection() {
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver found");
		
		} catch (ClassNotFoundException e){
			System.out.println("Driver not found. " + e.getMessage());
		}
		
		try {
			Connection connection = DriverManager.getConnection(url, user, password);
			System.out.println("Connected to database");
			return connection;
		
		} catch(SQLException e){
			System.out.println("Not connected to database. " + e.getMessage());
			return null;
		}
	}
}
